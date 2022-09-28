/**
 * @author Joel Espinosa Longi
 * @licencia Atribución-CompartirIgual 4.0 Internacional  - https://creativecommons.org/licenses/by-sa/4.0/deed.es
 */

const LANDSCAPE = 0;
const PORTRAIT  = 1;
let dark_style;

window.book_config = window.book_config || {
  remember_last_page: false,
  auto_numerate_sections_and_figures: false
};

document.addEventListener("DOMContentLoaded", function(evt) {

  // use dark style
  // dark_style = document.head.appendChild(document.createElement("link"));
  // dark_style.setAttribute("id", "dark_style");
  // dark_style.setAttribute("type", "text/css");
  // dark_style.setAttribute("rel", "stylesheet");
  // dark_style.setAttribute("href", "extra/style_dark.css");


  /** prevent the iframes to show */
  let iframes = document.querySelectorAll("iframe");
  for (let i=0, l=iframes.length; i<l; i++) {
    if (!iframes[i].hasAttribute("data-src")) {
      iframes[i].setAttribute("data-src", iframes[i].src);
    }
    iframes[i].setAttribute("src", "about:blank");
  }

  let body_style = getComputedStyle(document.body);
  let pages_container_width = parseInt(body_style.getPropertyValue("--pages_container_width"));
  let page_left_margin = parseInt(body_style.getPropertyValue("--page-left-margin"));
  let page_right_margin = parseInt(body_style.getPropertyValue("--page-right-margin"));
  let page_width = pages_container_width/2 - page_left_margin - page_right_margin;

  // add interactive
  addInteractive(page_width);

  // add image links
  let img_links = document.querySelectorAll(".image_link");
  let image_width;
  let div_img_links;
  let btn_link;
  for (let i=0, l=img_links.length; i<l; i++) {
    image_width = img_links[i].getAttribute("width") || "100%";
    img_links[i].setAttribute("width", "100%");

    div_img_links = document.createElement("div");
    img_links[i].parentNode.replaceChild(div_img_links, img_links[i]);

    let tmp_div = document.createElement("div");
    tmp_div.setAttribute("style", `margin:0 auto; position:relative; width:${image_width};`);
    div_img_links.appendChild(tmp_div);

    tmp_div.appendChild(img_links[i]);

    btn_link = document.createElement("button");
    btn_link.className = "btn_link";
    tmp_div.appendChild(btn_link);
  }

  // make foot notes
  let el;
  let footnote_list = document.querySelectorAll(".footnote");
  let footnote_parent_page;
  let footnote_container;
  let footnote_number;

  for (let i=0, l=footnote_list.length; i<l; i++) {
    el = footnote_list[i];
    footnote_parent_page = el;
    while(footnote_parent_page.className !== "page") {
      footnote_parent_page = footnote_parent_page.parentNode
    }

    footnote_number = document.createElement("sup");
    footnote_number.textContent = i+1;
    el.parentNode.replaceChild(footnote_number, el);
    el.setAttribute("number", i+1);

    footnote_container = footnote_parent_page.querySelector(".footnote_container");
    if (!footnote_container) {
      footnote_container = footnote_parent_page.appendChild( document.createElement("div") );
      footnote_container.className = "footnote_container";
    }
    footnote_container.appendChild(el);
  }

  if (book_config.auto_numerate_sections_and_figures) {
    numerateSectionsAndFigures();
  }

  // 
  addTableOfContentEntries();

  //
  addBibliography();
});

/**
 * 
 */
function addTableOfContentEntries() {
  let init_page_num = document.querySelector("[init-page-num=true]");
  let toc_links = document.querySelectorAll(".toc_link");
  let auto_toc_links = [];
  let no_auto_toc_links = [];
  for (let i=0, l=toc_links.length; i<l; i++) {
    if (toc_links[i].getAttribute("href")) {
      auto_toc_links.push(toc_links[i]);
    }
    else {
      no_auto_toc_links.push(toc_links[i]);
    }
  }

  let temp_a;
  // adjust style of manual toc links
  if (no_auto_toc_links.length > 0) {
    no_auto_toc_links.forEach(toc_link => {
      temp_a = toc_link.querySelector("a");

      if (!temp_a.innerHTML.match(/^<span/)) {
        temp_a.innerHTML = "<span>" + temp_a.innerHTML.replace(/<span class="toc_number">/, `</span><span class="toc_number">`)
      }
    });
  }


  if (auto_toc_links.length > 0) {
    let pages = Array.from(pages_container.querySelectorAll(".page"));

    if (init_page_num) {
      init_page_num = pages.indexOf(init_page_num)-1;
    }
    else {
      init_page_num = 0;
    }

    let elem;
    let elem_text;
    let page_elem;
    let page_num;
    let prefix;

    for (let i=0, l=auto_toc_links.length; i<l; i++) {
      elem = document.querySelector( auto_toc_links[i].getAttribute("href") );
      elem_text = elem.textContent.trim().replace(/\.$/, "");
      page_elem = getPageContainer(elem);

      if (page_elem) {
        page_num = pages.indexOf(page_elem);

        if (page_num != -1) {
          page_num -= init_page_num;
          auto_toc_links[i].setAttribute("onclick", `goToPage(${page_num})`);

          prefix = elem.getAttribute("prefix") || auto_toc_links[i].getAttribute("prefix");

          if (prefix) {
            auto_toc_links[i].setAttribute("style", "font-weight:bold;");
            auto_toc_links[i].innerHTML = `<a><span>${prefix}. ${elem_text}</span><span class="toc_number">${page_num}</span></a>`;
          }
          else {
            if (elem.hasAttribute("prefix")) {
              auto_toc_links[i].setAttribute("style", "font-weight:bold;");
            }
            auto_toc_links[i].innerHTML = `<a><span style="padding-left:1em;">${elem_text}</span><span class="toc_number">${page_num}</span></a>`;
          }
        }
      }
    }
  }

  // add elements to the table of content
  let toc = document.getElementById("table_of_content");
  if (!toc) {
    let book_container = document.getElementById("book_container");
    let toc_btn = document.getElementById("go_to_table_of_content");
    toc = document.createElement("div");
    toc.setAttribute("id", "table_of_content");
    book_container.insertBefore(toc, toc_btn.nextSibling);
  }

  toc.innerHTML = "";
  let link_clone;
  let tmp;
  for (entry of toc_links) {
    link_clone = entry.cloneNode(true);
    tmp = link_clone.getAttribute("onclick");
    link_clone.setAttribute("onclick", tmp.replace(/\)/g, ",true)"));

    tmp = tmp.match(/(\d)+/g)[0];
    link_clone.setAttribute("page_num", tmp);

    toc.appendChild(link_clone);
  }
  toc.addEventListener("click", (evt) => {
    toc.style.display = "none";
  })
}

/** 
 * 
 */
function addBibliography() {
  let bibitems = document.querySelectorAll("bibitem");
  let tmp;
  let tmp_attr;
  let attr_list = ["authors", "title", "editorial", "edition", "year"];

  bibitems.forEach(item => {
    let margin_left = "5em";

    item.setAttribute("style", `margin-left:${margin_left};`)

    // id
    tmp_attr = item.getAttribute("id");
    if (tmp_attr) {
      tmp = document.createElement("span")
      tmp.innerHTML = "[" + tmp_attr + "] ";
      tmp.setAttribute("style", `position:absolute; left:-${margin_left};`)
      tmp.classList = "bibitem_id";
      item.appendChild(tmp);
    }

    for (let i=0; i<attr_list.length; i++) {
      tmp_attr = item.getAttribute(attr_list[i]);
      if (tmp_attr) {
        tmp = document.createElement("span")
        tmp.innerHTML = tmp_attr + ". ";
        tmp.classList = "bibitem_" + attr_list[i];
        item.appendChild(tmp);
      }
    }
  });

  // add bib references
  let bibrefs = document.querySelectorAll("bibref");
  let tmp_id;
  bibrefs.forEach(ref => {
    tmp_id = document.getElementById(ref.getAttribute("ref_id"));
    if (tmp_id) {
      ref.innerHTML = "[" + tmp_id.getAttribute("id") + "]";
      ref.title = tmp_id.textContent.trim();
    }
  });
}

/**
 * 
 */
function getPageContainer(elem) {
  while (elem && elem.className !== "page") {
    elem = elem.parentNode;
  }
  return elem;
}

/**
 * 
 */
function addInteractive(page_width) {
  let interactive = document.querySelectorAll(".interactive");
  let w;
  let h;
  let scale;
  let src;
  let new_iframe;
  let new_expand;
  let window_size;
  let margin = 30;
  let btn;
  for (let i=0, l=interactive.length; i<l; i++) {
    w = parseInt(interactive[i].getAttribute("width") || 0);
    h = parseInt(interactive[i].getAttribute("height") || 0);
    scale = parseInt( interactive[i].getAttribute("scale") || 100 ) / 100;
    src = interactive[i].getAttribute("src") || "";
    window_size = interactive[i].getAttribute("window-size") || false;

    interactive[i].setAttribute("style", `width:${w * ((page_width-margin)*scale)/w + margin}px; height:${h * ((page_width-margin)*scale)/w + margin}px;`);
    
    if (! (((window.hasOwnProperty) && (window.hasOwnProperty("ontouchstart"))) || ("ontouchstart" in window))) {
      interactive[i].style.overflow = "hidden";
    }
    
    new_iframe = document.createElement("iframe");
    new_iframe.setAttribute("width", w * ((page_width-margin)*scale)/w);
    new_iframe.setAttribute("height", h * ((page_width-margin)*scale)/w);
    new_iframe.setAttribute("data-src", src);
    new_iframe.setAttribute("src", "about:blank");

    new_expand = document.createElement("div");
    new_expand.setAttribute("style", "position:relative; top:-15px; z-index:1000;");

    btn = document.createElement("button");
    btn.className = "btn_ampliar";
    new_expand.appendChild(btn);

    if (window_size) {
      w = window.innerWidth;
      h = window.innerHeight;
    }
    new_expand.onclick = new Function("", `openInteractive("${src}", ${w}, ${h+40});return 0;`);

    interactive[i].appendChild(new_expand);
    interactive[i].appendChild(new_iframe);
  }
}

/**
 * 
 */
function numerateSectionsAndFigures(pages) {
  let chapter_counter = 0;
  let section_counter = 0;
  let subsection_counter = 0;
  let figure_counter = 0;
  let num_block_counter = 0;
  let tag_name;

  let elements = document.querySelectorAll(".chap_name,h2,h3,figcaption,.num_block");

  elements.forEach((ele) => {
    if (ele.classList.contains("chap_name")) {
      chapter_counter++;
      section_counter = figure_counter = num_block_counter = 0;

      if (!ele.hasAttribute("prefix")) {
        ele.setAttribute("prefix", chapter_counter);
      }
    }
    else if (chapter_counter > 0) {
      if (!ele.hasAttribute("not_number")) {
        tag_name = ele.tagName.toLocaleLowerCase();

        // section
        if (tag_name == "h2") {
          section_counter++;
          subsection_counter = 0;
          ele.innerHTML = `${chapter_counter}.${section_counter} ${ele.innerHTML}`;
        }
        // subsection
        else if (tag_name == "h3") {
          subsection_counter++;
          ele.innerHTML = `${chapter_counter}.${section_counter}.${subsection_counter} ${ele.innerHTML}`;
        }
        // figure
        else if (tag_name == "figcaption") {
          figure_counter++;
          // set the ref_text in the figcaption tag and in the figure tag
          ele.ref_text = `<b>Figura ${chapter_counter}.${figure_counter}</b>`;
          ele.parentNode.ref_text = ele.ref_text; 
          ele.innerHTML = `${ele.ref_text}: ${ele.innerHTML}`;
        }
        // num_block
        else if ((tag_name == "div") && (ele.className == "num_block")) {
          num_block_counter++;
          ele.ref_text = `<b><i>${ele.getAttribute("prefix") || ""} ${chapter_counter}.${num_block_counter}</i></b>`;
          ele.innerHTML = `${ele.ref_text}. ${ele.innerHTML}`;
        }
      }
    }
  });

  // add the figures references
  let refs = document.querySelectorAll("ref");
  let ref_elem;
  refs.forEach((ref) => {
    ref_elem = document.getElementById(ref.getAttribute("ref_id") || "");
    if (ref_elem) {
      ref.innerHTML = ref_elem.ref_text;
    }
  });
}

/**
 * 
 */
window.addEventListener("load", function(evt) {
  let current_page = 0;

  // set the value of the current page to the last page seen
  if (book_config.remember_last_page === true) {
    try {
      current_page = parseInt( window.localStorage.getItem('last_page') || 0 );
    }
    catch(e) {
      console.warn(e);
    }
  }

  let book_container = document.getElementById("book_container");

  let body_style = getComputedStyle(document.body);

  let page_viewer = book_container.appendChild( document.createElement("div") );
  page_viewer.className = "page_viewer";

  let pages_container = document.getElementById("pages_container");
  page_viewer.appendChild(pages_container);

  let pages = pages_container.querySelectorAll(".page");

  let pages_container_width = parseInt(body_style.getPropertyValue("--pages_container_width"));
  let pages_container_height = parseInt(body_style.getPropertyValue("--pages_container_height"));

  let back = document.getElementById("btn_back_page");
  let next = document.getElementById("btn_next_page");

  let toc_btn = document.getElementById("go_to_table_of_content");

  let orientation = LANDSCAPE;
  // let nav_btn_size = 2.65;
  let nav_btn_size = 2.2;

  window.addEventListener("resize", resize);
  function resize(evt) {
    let w = window.innerWidth;
    let h = window.innerHeight;
    let tmp_w;
    
    if (w > h) {
      tmp_w = pages_container_width;
      orientation = LANDSCAPE;
      back.style.width = next.style.width = `${nav_btn_size}vw`;
      // toc_btn.style.width = toc_btn.style.height = `${nav_btn_size}vw`;
    }
    else {
      tmp_w = pages_container_width/2;
      orientation = PORTRAIT;
      back.style.width = next.style.width = `${nav_btn_size}vh`;
      // toc_btn.style.width = toc_btn.style.height = `${nav_btn_size}vh`;
    }

    page_viewer.style.width = `${tmp_w}px`;

    let scaleToFitX = w/tmp_w;
    let scaleToFitY = h/pages_container_height;

    if (scaleToFitX < scaleToFitY) {
      page_viewer.style.left = "0px";
      page_viewer.style.top = "50%";
      page_viewer.style.transform = `scale(${scaleToFitX}) translate(0, -50%)`;
    }
    else {
      page_viewer.style.left = "50%";
      page_viewer.style.top = "0px";
      page_viewer.style.transform = `scale(${scaleToFitY}) translate(-50%, 0)`;
    }

    goToPage(current_page);
  }
  resize();



  /** */
  let btn_config = document.getElementById("btn_config");
  let config_options = document.getElementById("config_options");
  let show_config = false;
  function show_hide_config_options() {
    show_config = !show_config;
    config_options.style.display = (show_config) ? "block" : "none";
  }
  if (btn_config) {
    btn_config.addEventListener("click", (evt) => {
      show_hide_config_options();
    });

    let dark_light_mode = document.getElementById("dark_light_mode");
    if (dark_light_mode) {
      let div = dark_light_mode.appendChild(document.createElement("div"));
      let label = div.appendChild(document.createElement("span"));
      label.innerHTML = "Modo claro/oscuro";
      let sw = div.appendChild(document.createElement("input"));
      sw.setAttribute("class", "switch");
      sw.setAttribute("type", "checkbox");
      sw.addEventListener("change", (evt) => {
        document.body.classList.toggle("dark");
        show_hide_config_options();
      });
    }
  }




  /** add the page numbers */
  let init_page_num = 0;
  let arabic_number_page = Infinity;
  let tmp_num;

  for (let i=0; i<pages.length; i++) {
    if (pages[i].hasAttribute("init-page-num")) {
      init_page_num = i;
    }
    if (pages[i].hasAttribute("num-type-arabic")) {
      arabic_number_page = i;
    }
  }
  for (let i=0; i<pages.length; i++) {
    if ((i >= init_page_num) && (!pages[i].hasAttribute("num"))) {
      tmp_num = pages[i].appendChild( document.createElement("div") );

      if (i < arabic_number_page) {
        tmp_num.textContent = toRoman((i - init_page_num) +1);
      }
      else {
        tmp_num.textContent = (i - init_page_num) +1;
      }

      tmp_num.className = "page_number";
    }

    if (i >= arabic_number_page) {
      pages[i].setAttribute("page_num", (i - init_page_num) +1);
    }
  }

  /** Hide the child nodes of each page to help the rendering in chrome */
  for (let i=0; i<pages.length; i++) {
    pages[i].setAttribute("show", "true");
  }

  /** add the back and next actions to the buttons */
  let inc;
  back.addEventListener("click", function(evt) {
    inc = (orientation === LANDSCAPE) ? 2 : 1;
    goToPage(Math.max(current_page-inc, 0));
  });
  next.addEventListener("click", function(evt) {
    inc = (orientation === LANDSCAPE) ? 2 : 1;
    goToPage(Math.min(current_page+inc, pages.length-1));
  });

  /**
   * 
   */
  function goToPage(new_page) {
    if ( (orientation === PORTRAIT) && (new_page === 0) ) {
      new_page = 1;
    }
    if ( (orientation === LANDSCAPE) && (new_page % 2) ) {
      new_page--;
    }

    // get the iframes in the current pages
    let last_iframes = [];
    for (let i=current_page-2; i<current_page+4; i++) {
      if ((i >= 0) && (i < pages.length)) {
        // hide the elements of the current pages
        pages[i].setAttribute("show", "true");

        if (!pages[i].iframes) {
          pages[i].iframes = Array.from(pages[i].querySelectorAll("iframe"));
        }
        last_iframes = last_iframes.concat(pages[i].iframes);
      }
    }
    // get the videos in the current pages
    let last_videos = [];
    for (let i=current_page; i<current_page+2; i++) {
      if ((i >= 0) && (i < pages.length)) {
        if (!pages[i].videos) {
          pages[i].videos = Array.from(pages[i].querySelectorAll("video"));
        }
        last_videos = last_videos.concat(pages[i].videos);
      }
    }

    // change the current page
    current_page = new_page;

    // get the iframes in the next page (the new current page)
    let next_iframes = [];
    for (let i=current_page-2; i<current_page+4; i++) {
      if ((i >= 0) && (i < pages.length)) {
        // show the elements in the current pages
        pages[i].removeAttribute("show");

        if (!pages[i].iframes) {
          pages[i].iframes = Array.from(pages[i].querySelectorAll("iframe"));
        }
        next_iframes = next_iframes.concat(pages[i].iframes);
      }
    }
    // get the videos in the next page (the new current page)
    let next_videos = [];
    for (let i=current_page; i<current_page+2; i++) {
      if ((i >= 0) && (i < pages.length)) {
        if (!pages[i].videos) {
          pages[i].videos = Array.from(pages[i].querySelectorAll("video"));
        }
        next_videos = next_videos.concat(pages[i].videos);
      }
    }

    // get all the iframes to deactivate
    let deactivate_iframes = last_iframes.filter((el) => {
      return !(next_iframes.includes(el));
    });
    for (let i=0, l=deactivate_iframes.length; i<l; i++) {
      deactivate_iframes[i].setAttribute("src", "about:blank");
    }
    for (let i=0, l=next_iframes.length; i<l; i++) {
      if (next_iframes[i].getAttribute("src") == "about:blank") {
        next_iframes[i].setAttribute("src", next_iframes[i].getAttribute("data-src"));
      }
    }

    // get all the videos to stop
    let stop_videos = last_videos.filter((el) => {
      return !(next_videos.includes(el));
    });
    for (let i=0, l=stop_videos.length; i<l; i++) {
      stop_videos[i].pause();
      stop_videos[i].currentTime = 0;
    }

    // show the last page seen
    try {
      window.localStorage.setItem("last_page", current_page);
    }
    catch(e) {
      console.warn(e);
    }

    // set the focus in the window
    setTimeout(function() { window.focus(); }, 100);

    // move the pages
    pages_container.style.left = -(pages_container_width/2 * current_page) + "px";
  }
  goToPage(current_page);

  /** */
  window.goToPage = function(num) {
    goToPage( (orientation === LANDSCAPE) ? parseInt(parseInt((num+2) / 2) * 2) : num+2 );
  }

  /** */
  window.openImage = function(img) {
    window.open(img.src, "_blank", `scrollbars=yes,resizable=yes,location=0,titlebar=0,menubar=0,status=0,toolbar=0,left=${(screen.availWidth-img.naturalWidth)/2},top=${(screen.availHeight-img.naturalHeight)/2},width=${img.naturalWidth},height=${img.naturalHeight}`);
  }

  /** */
  window.openInteractive = function(href, width, height) {
    window.open(href, "_blank", `scrollbars=yes,resizable=yes,location=0,titlebar=0,menubar=0,status=0,toolbar=0,left=${(screen.availWidth-width)/2},top=${(screen.availHeight-height)/2},width=${width},height=${height}`);
  }

  let last_toc_link = null;
  let toc_links = document.getElementById("table_of_content");
  toc_links = toc_links.querySelectorAll(".toc_link");
  /** */
  toc_btn.addEventListener("click", function(evt) {
    let pn = parseInt(pages[current_page].getAttribute("page_num"));
    let toc_selected = document.querySelector(".toc_selected");

    if (toc_selected) {
      toc_selected.classList.remove("toc_selected");
    }

    if (pn) {
      for (let i=toc_links.length-1; i>=0; i--) {
        if (pn >= parseInt(toc_links[i].getAttribute("page_num"))) {
          last_toc_link = toc_links[i];
          break;
        }
      }

      if (last_toc_link) {
        last_toc_link.classList.add("toc_selected");
      }
    }

    document.getElementById("table_of_content").style.display = "block";
  });
  

  /** */
  let x = null;
  let swipe_length = 50;
  let click_time = 100000;
  function unify(evt) {
    return (evt.changedTouches) ? evt.changedTouches[0] : evt
  };

  function getCoord(evt) {
    evt.stopPropagation();
    x = unify(evt).clientX;
    click_time = Date.now();
  }
  function move(evt) {
    if (Date.now() - click_time < 220) {
      if (x !== null) {
        let dx = unify(evt).clientX - x;
        let s = Math.sign(dx);

        if ( ((current_page > 0) && (s > 0)) || ((current_page < pages.length-1) && (s < 0)) ) {
          if (Math.abs(dx) > swipe_length) {
            inc = (orientation === LANDSCAPE) ? 2 : 1;
            evt.preventDefault();
            goToPage( current_page - s*inc );
          }
        }
      }
    }
  }

  book_container.addEventListener("mousedown",  getCoord, false);
  book_container.addEventListener("touchstart", getCoord, false);
  book_container.addEventListener("mouseup",  move, false);
  book_container.addEventListener("touchend", move, false);

  /** */
  window.focus();
  window.addEventListener("keydown", function(evt) {
    if (evt.key === "ArrowLeft") {
      back.click();
    }
    if (evt.key === "ArrowRight") {
      next.click();
    }
    if (evt.key === "Home") {
      goToPage(0);
    }
    if (evt.key === "End") {
      goToPage(pages.length-1);
    }
  });


  /** */
  document.getElementById("book_loader_container").style.display = "none";
});

const ROMAN_U = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"];
const ROMAN_D = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"];

function toRoman(num) {
  let roman_number = "";

  if (num < 100) {
    roman_number = ROMAN_D[parseInt(num/10)];
    num = num - (parseInt(num/10))*10;
  }

  if (num < 10) {
    roman_number += ROMAN_U[num];
  }

  return roman_number.toLowerCase();
}
