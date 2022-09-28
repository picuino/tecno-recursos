///////////////////////////////
//     The Oscilloscope      //
///////////////////////////////

//Button states
var PWRON = false;
var CabConn = false;
var CCpress = false;
var TPressed = false;
var SPressed = false;
var ACDC = 1; //GND = 0, AC = 1, DC = 2

//SineWave
var speed = -0.05;
var pos = 0;
var posHoffs = 0.03;
var posToffs = 0;

var posVoffs = 0;
var foc = 3;
var FocusOffset = foc * 0.004;
var intens = 0.9;
var frequency = 12.5;
var amplitude = 1.25;
var ampmax = amplitude + FocusOffset;
var ampmin = ampmax * -1;
var options;

//Knob-vars
var deg = 0;
var Knob;
var dialX = "";
var PosH = 0;
var AddPosH = true;
var LastY = 0;
var PosV = 0;
var AddPosV = true;
var LastX = 0;
var dblclk = false;

var isIE = /*@cc_on!@*/false || !!document.documentMode;
if(isIE){
  alert("Apparently you are using Internet Explorer - and this pen might not work 100% with this browser. Therefore, consider switching to something else...")
};


//cable connection
$(".utxt").click(function() {
  ConnDisconn();
});

$(".BNCFrame").click(function() {
  ConnDisconn();
});

function ConnDisconn() {
  if (CabConn == false) {
    $(".cableShadow").css("animation-duration", "5s");
    $(".cable").css("animation-duration", "5s");
    $(".BNCplug").css("animation-duration", "5s");
    $(".cableShadow").css("animation-name", "cableShadowA");
    $(".cable").css("animation-name", "cableA");
    $(".BNCplug").css("animation-name", "BNCplugA");
    $(".cableShadow").css("visibility", "visible");
    $(".cable").css("visibility", "visible");
    $(".BNCplug").css("visibility", "visible");
    CCpress = true;
    CabStat();

  } else {
    //animation-direction: alternate
    $(".BNCplug").css("animation-name", "BNCplugB");
    $(".cableShadow").css("animation-name", "cableShadowB");
    $(".cable").css("animation-name", "cableB");
    $(".BNCplug").css("animation-fill-mode", "forwards");
    $(".cableShadow").css("animation-fill-mode", "forwards");
    $(".cable").css("animation-fill-mode", "forwards");
    CabConn = false;
    CCpress = false;
    AmpPlot(amplitude);
    CabHid();
  }
}

function CabStat() {
  setTimeout(function() {
    CabConn = true;
  }, 4800);
  setTimeout(function() {
    AmpPlot(amplitude);
  }, 4800);
}

function CabHid(){
  setTimeout(function() {
    if(CCpress == false){
    $(".cableShadow").css("visibility", "hidden");
    $(".cable").css("visibility", "hidden");
  };
  }, 5000);
}

//Power-Button and Power-LED
$(".PButton").click(function() {
  //alert("hi!");
  if ($(this).css("top") == "2px") {
    PWRON = true;
    $(this).css("top", "9px");

    $(".PLed").css("transition", "all .1s linear");
    $(".MKLed").css("transition", "all .1s linear");
    $(".RLed").css("transition", "all .1s linear");

    $(".PLed").css("background", "#3F3");
    $(".MKLed").css("background", "#3F3");
    $(".RLed").css("background", "#28F");

    $(".OffLine").css("visibility", "hidden");
    $(".OffLine").css("transition", "all 0.0s linear");
    $(".OffLine").css("left", "6px");
    $(".OffLine").css("top", "164px");
    $(".OffLine").css("width", "398px");
    $(".OffLine").css("height", "4px");

    $("#PressTon").css("transition", "color .1s linear");
    $("#PressToff").css("transition", "color .1s linear");

    if (TPressed) {
      $("#PressTon").css("color", "#3D3");
      $("#PressToff").css("color", "#999");
    } else {
      $("#PressTon").css("color", "#999");
      $("#PressToff").css("color", "#D72");
    }

    $(".slopeUp").css("transition", "all .1s linear");
    $(".slopeDown").css("transition", "all .1s linear");
    if (SPressed) {
      $(".slopeUp").css("stroke", "#999");
      $(".slopeDown").css("stroke", "#3D3");
    } else {
      $(".slopeUp").css("stroke", "#3D3");
      $(".slopeDown").css("stroke", "#999");
    }

    $("#DC").css("transition", "color .1s linear");
    $("#AC").css("transition", "color .1s linear");
    $("#GND").css("transition", "color .1s linear");
    switch (ACDC) {
      case 0:
        $("#DC").css("color", "#999");
        $("#AC").css("color", "#999");
        $("#GND").css("color", "#3D3");
        break;
      case 1:
        $("#DC").css("color", "#999");
        $("#AC").css("color", "#3D3");
        $("#GND").css("color", "#999");
        break;
      case 2:
        $("#DC").css("color", "#3D3");
        $("#AC").css("color", "#999");
        $("#GND").css("color", "#999");
        break;
    }

    AmpPlot(amplitude);
    $("#SineW").css("visibility", "visible");

    $(".arrowLH").css("transition", "all .1s linear");
    $(".arrowRH").css("transition", "all .1s linear");
    $(".arrowLV").css("transition", "all .1s linear");
    $(".arrowRV").css("transition", "all .1s linear");

  } else {
    PWRON = false;
    $(this).css("top", "2px");

    $(".PLed").css("transition", "all 2s linear");
    $(".MKLed").css("transition", "all 2s linear");
    $(".RLed").css("transition", "all 2s linear");
    $(".PLed").css("background", "#363");
    $(".MKLed").css("background", "#363");
    $(".RLed").css("background", "#339");

    $(".OffLine").css("visibility", "visible");
    $(".OffLine").css("transition", "all .2s ease-in");
    $(".OffLine").css("left", "206px");
    $(".OffLine").css("top", "165px");
    $(".OffLine").css("width", "0px");
    $(".OffLine").css("height", "2px");

    $("#PressTon").css("transition", "color 2s linear");
    $("#PressToff").css("transition", "color 2s linear");
    $("#PressTon").css("color", "#999");
    $("#PressToff").css("color", "#999");

    $(".slopeUp").css("transition", "all 2s linear");
    $(".slopeDown").css("transition", "all 2s linear");
    $(".slopeUp").css("stroke", "#999");
    $(".slopeDown").css("stroke", "#999");

    $("#DC").css("transition", "color 2s linear");
    $("#AC").css("transition", "color 2s linear");
    $("#GND").css("transition", "color 2s linear");
    $("#DC").css("color", "#999");
    $("#AC").css("color", "#999");
    $("#GND").css("color", "#999");

    $("#SineW").css("visibility", "hidden");

    if (PosH != 0) {
      switch (frequency) {
        case 0.25:
          pos = 0.09;
          break;
        case 0.5:
          pos = 0.21;
          break;
        case 1.25:
          pos = 0.6;
          break;
        case 2.5:
          pos = 1.2;
          break;
        case 5:
          pos = 2.52;
          break;
        default:
          pos = 0;
      }
    }
    PosH = 0;
    $(".TriggerMarker").css("left", "197px");
    $(".TriggerMarker").css("visibility", "visible");
    $(".arrowLH").css("transition", "all 2s linear");
    $(".arrowRH").css("transition", "all 2s linear");
    $(".arrowLH").css("border-right", "14px solid #999");
    $(".arrowRH").css("border-left", "14px solid #999");

    PosV = 0;
    posVoffs = 0;
    $(".LevelMarker").css("top", "157px");
    $(".LevelMarker").css("visibility", "visible");
    $(".arrowLV").css("transition", "all 2s linear");
    $(".arrowRV").css("transition", "all 2s linear");
    $(".arrowLV").css("border-right", "14px solid #999");
    $(".arrowRV").css("border-left", "14px solid #999");

  }
});

//Trigger Button
$(".PressT").click(function() {
  if (TPressed == false) {
    $(this).css("box-shadow", "2px 2px 2px rgba(0, 0, 0, 0.5), inset -1px -1px 2px rgba(0, 0, 0, 0.5)");
    TPressed = true;
    speed = 0;
    pos = posToffs;
    if (PWRON) {
      $("#PressTon").css("color", "#3D3");
      $("#PressToff").css("color", "#999");
    }
  } else {
    $(this).css("box-shadow", "3px 3px 10px rgba(0, 0, 0, 0.5), inset -2px -2px 2px rgba(0, 0, 0, 0.5)");
    TPressed = false;
    speed = -0.05;
    if (PWRON) {
      $("#PressTon").css("color", "#999");
      $("#PressToff").css("color", "#D72");
    }
  }
});

//Slope Button
$(".PressS").click(function() {
  if (SPressed == false) {
    $(this).css("box-shadow", "2px 2px 2px rgba(0, 0, 0, 0.5), inset -1px -1px 2px rgba(0, 0, 0, 0.5)");
    SPressed = true;

    if (PWRON) {
      $(".slopeUp").css("stroke", "#999");
      $(".slopeDown").css("stroke", "#3D3");
    }

  } else {
    $(this).css("box-shadow", "3px 3px 10px rgba(0, 0, 0, 0.5), inset -2px -2px 2px rgba(0, 0, 0, 0.5)");
    SPressed = false;

    if (PWRON) {
      $(".slopeUp").css("stroke", "#3D3");
      $(".slopeDown").css("stroke", "#999");
    }
  }
});

//SineWave
function getData() {
  var d1 = [];
  for (var i = 0; i < frequency; i += 0.1)
    if (SPressed) {
      d1.push([i, Math.sin(i - pos) * -1]);
      //d1.push([i, Math.cos(i - pos)]);
    } else {
      d1.push([i, Math.sin(i - pos)]);
    }
  if (pos == 1) {
    pos = 0;
  } else {
    pos = pos + speed;
  }
  pos = Math.round(pos * 100) / 100;
  return d1;
}

function update() {
  plot.setData([getData()]);
  plot.setupGrid();
  plot.draw();
  console.log(amplitude);
}

function getOptions() {
  options = {
    yaxis: {
      min: ampmin,
      max: ampmax,
      show: false
    },
    xaxis: {
      show: false
    },
    series: {
      lines: {
        show: true,
        lineWidth: foc
      },
    },
    grid: {
      show: false,
    },
    colors: ["rgba(20, 100, 255," + intens + ")"],
    shadowSize: 0,
  };
}

getOptions()
var plot = $.plot($("#SineW"), [getData()], options);
var int = self.setInterval(function() {
  update()
}, 50);

//Knob functions
$(function KnobMoves() {
  var mdown = false;
  var bm = false;
  $(".circT")
    .mousedown(function(e) {
      Knob = document.querySelector(".KnobT");
      mdown = true;
      bm = false;
      e.originalEvent.preventDefault();
      AdjAng("T", mdown, bm, e);
    })
    .mouseup(function(e) {
      Knob = document.querySelector(".KnobT");
      $(".KnobT").css("transition", "all .1s linear");
      if (mdown) {
        SnapAng(mdown, e)
      }
      mdown = false;
    })
    .mouseout(function(e) {
      Knob = document.querySelector(".KnobT");
      $(".KnobT").css("transition", "all .1s linear");
      if (mdown) {
        SnapAng(mdown, e)
      }
      mdown = false;
    })
    .mousemove(function(e) {
      Knob = document.querySelector(".KnobT");
      $(".KnobT").css("transition", "all .0s linear");
      bm = true;
      AdjAng("T", mdown, bm, e);
    });

  $(".circV")
    .mousedown(function(e) {
      Knob = document.querySelector(".KnobV");
      mdown = true;
      bm = false;
      e.originalEvent.preventDefault();
      AdjAng("V", mdown, bm, e);
    })
    .mouseup(function(e) {
      Knob = document.querySelector(".KnobV");
      $(".KnobV").css("transition", "all .1s linear");
      if (mdown) {
        SnapAng(mdown, e)
      }
      mdown = false;
    })
    .mouseout(function(e) {
      Knob = document.querySelector(".KnobV");
      $(".KnobV").css("transition", "all .1s linear");
      if (mdown) {
        SnapAng(mdown, e)
      }
      mdown = false;
    })
    .mousemove(function(e) {
      Knob = document.querySelector(".KnobV");
      $(".KnobV").css("transition", "all .0s linear");
      bm = true;
      AdjAng("V", mdown, bm, e);
    });

  $(".circF")
    .mousedown(function(e) {
      Knob = document.querySelector(".miniKnobF");
      mdown = true;
      bm = false;
      e.originalEvent.preventDefault();
      AdjAng("F", mdown, bm, e);
    })
    .mouseup(function(e) {
      Knob = document.querySelector(".miniKnobF");
      $(".miniKnobF").css("transition", "all .1s linear");
      if (mdown) {
        Knob.style.transform = "rotate(" + deg + "deg)";
        Knob.style.webkitTransform = "rotate(" + deg + "deg)";
      }
      mdown = false
    })
    .mouseout(function(e) {
      Knob = document.querySelector(".miniKnobF");
      $(".miniKnobF").css("transition", "all .1s linear");
      if (mdown) {
        Knob.style.transform = "rotate(" + deg + "deg)";
        Knob.style.webkitTransform = "rotate(" + deg + "deg)";
      }
      mdown = false

    })
    .mousemove(function(e) {
      Knob = document.querySelector(".miniKnobF");
      $(".miniKnobF").css("transition", "all .0s linear");
      bm = true;
      AdjAng("F", mdown, bm, e);
    });

  $(".circI")
    .mousedown(function(e) {
      Knob = document.querySelector(".miniKnobI");
      mdown = true;
      bm = false;
      e.originalEvent.preventDefault();
      AdjAng("I", mdown, bm, e);
    })
    .mouseup(function(e) {
      Knob = document.querySelector(".miniKnobI");
      $(".miniKnobI").css("transition", "all .1s linear");
      if (mdown) {
        Knob.style.transform = "rotate(" + deg + "deg)";
        Knob.style.webkitTransform = "rotate(" + deg + "deg)";
      }
      mdown = false
    })
    .mouseout(function(e) {
      Knob = document.querySelector(".miniKnobI");
      $(".miniKnobI").css("transition", "all .1s linear");
      if (mdown) {
        Knob.style.transform = "rotate(" + deg + "deg)";
        Knob.style.webkitTransform = "rotate(" + deg + "deg)";
      }
      mdown = false
    })
    .mousemove(function(e) {
      Knob = document.querySelector(".miniKnobI");
      $(".miniKnobI").css("transition", "all .0s linear");
      bm = true;
      AdjAng("I", mdown, bm, e);
    });

  //Horizontal Position
  $(".circPH")
    .mousedown(function(e) {
      Knob = document.querySelector(".miniKnobPosH");
      $(".circPH").css("animation-name", "");
      mdown = true;
      dblclk = false;
      bm = false;
      e.originalEvent.preventDefault();
      if (PWRON) {
        //$(".TriggerMarker").css("border-top", "8px solid #FFF");
      }
    })

  .dblclick(function(e) {
    $(".miniKnobPosH").css("transition", "all .1s linear");
    $(".circPH").css("animation-name", "push");
    //css("transition", "all .1s linear");  animation-name: push;
    mdown = false;
    bm = false;
    dblclk = true;
    if (PWRON) {
      if (PosH != 0) {
        switch (frequency) {
          case 0.25:
            pos = 0.09;
            break;
          case 0.5:
            pos = 0.21;
            break;
          case 1.25:
            pos = 0.6;
            break;
          case 2.5:
            pos = 1.2;
            break;
          case 5:
            pos = 2.52;
            break;
          default:
            pos = 0;
        }
      }
      PosH = 0;
      $(".TriggerMarker").css("visibility", "visible");
      $(".TriggerMarker").css("left", "197px");
      $(".arrowLH").css("border-right", "14px solid #999");
      $(".arrowRH").css("border-left", "14px solid #999");
    }

  })

  .mouseup(function(e) {
    $(".miniKnobPosH").css("transition", "all .1s linear");
    if (mdown) {
      if (dblclk == false) {
        Knob.style.transform = "rotate(" + deg + "deg)";
        Knob.style.webkitTransform = "rotate(" + deg + "deg)";
      }
    }
    mdown = false;
    if (PWRON) {
      $(".TriggerMarker").css("border-top", "8px solid #666");
    }
  })

  .mouseout(function(e) {
    $(".miniKnobPosH").css("transition", "all .1s linear");
    if (mdown) {
      if (dblclk == false) {
        Knob.style.transform = "rotate(" + deg + "deg)";
        Knob.style.webkitTransform = "rotate(" + deg + "deg)";
      }
    }
    mdown = false;
    if (PWRON) {
      $(".TriggerMarker").css("border-top", "8px solid #666");
    }
  })

  .mousemove(function(e) {
    $(".miniKnobPosH").css("transition", "all .0s linear");
    bm = true;
    if (mdown) {
      if (dblclk == false) {
        AdjAng("PH", mdown, bm, e);
        if (PWRON) {
          if (AddPosH) {
            PosH++
            pos = pos + posHoffs; //Offset specific on timePos
            var leftVal = (197 + PosH).toString() + "px";
            if (PosH > 190) {
              $(".TriggerMarker").css("visibility", "hidden");
              $(".arrowRH").css("border-left", "14px solid #3F3");
            } else {
              if (PosH > -192) {
                $(".TriggerMarker").css("visibility", "visible");
                $(".arrowLH").css("border-right", "14px solid #999");
              }
            }
            $(".TriggerMarker").css("left", leftVal);
          } else {
            PosH--
            pos = pos - posHoffs;
            var leftVal = (197 + PosH).toString() + "px";
            if (PosH < -192) {
              $(".TriggerMarker").css("visibility", "hidden");
              $(".arrowLH").css("border-right", "14px solid #3F3");
            } else {
              if (PosH < 190) {
                $(".TriggerMarker").css("visibility", "visible");
                $(".arrowRH").css("border-left", "14px solid #999");
              }
            }
            $(".TriggerMarker").css("left", leftVal);
          }
        }
      }
    }
  });

  //Vertical Position
  $(".circPV")
    .mousedown(function(e) {
      Knob = document.querySelector(".miniKnobPosV");
      $(".circPV").css("animation-name", "");
      mdown = true;
      dblclk = false;
      bm = false;
      e.originalEvent.preventDefault();
      if (PWRON) {
        //$(".LevelMarker").css("border-left", "8px solid #FFF");
      }
    })

  .dblclick(function(e) {
    $(".miniKnobPosV").css("transition", "all .1s linear");
    $(".circPV").css("animation-name", "push");
    //css("transition", "all .1s linear");  animation-name: push;
    mdown = false;
    bm = false;
    dblclk = true;
    if (PWRON) {
      PosV = 0;
      posVoffs = 0;
      if (ACDC == 0) {
        AmpPlot(1000);
      } else {
        AmpPlot(amplitude);
      }
      $(".LevelMarker").css("visibility", "visible");
      $(".LevelMarker").css("top", "157px");
      $(".arrowLV").css("border-right", "14px solid #999");
      $(".arrowRV").css("border-left", "14px solid #999");

    }
  })

  .mouseup(function(e) {
    $(".miniKnobPosV").css("transition", "all .1s linear");
    if (mdown) {
      if (dblclk == false) {
        Knob.style.transform = "rotate(" + deg + "deg)";
        Knob.style.webkitTransform = "rotate(" + deg + "deg)";
      }
    }
    mdown = false;
    if (PWRON) {
      $(".LevelMarker").css("border-left", "8px solid #666");
    }
  })

  .mouseout(function(e) {
    $(".miniKnobPosV").css("transition", "all .1s linear");
    if (mdown) {
      if (dblclk == false) {
        Knob.style.transform = "rotate(" + deg + "deg)";
        Knob.style.webkitTransform = "rotate(" + deg + "deg)";
      }
    }
    mdown = false;
    if (PWRON) {
      $(".LevelMarker").css("border-left", "8px solid #666");
    }
  })

  .mousemove(function(e) {
    $(".miniKnobPosV").css("transition", "all .0s linear");
    bm = true;
    if (mdown) {
      if (dblclk == false) {
        AdjAng("PV", mdown, bm, e);
        if (PWRON) {
          if (AddPosV) {
            PosV++
            if (ACDC == 0) {
              AmpPlot(1000);
            } else {
              AmpPlot(amplitude);
            }
            var topVal = (157 - PosV).toString() + "px";
            if (PosV > 152) {
              $(".LevelMarker").css("visibility", "hidden");
              $(".arrowLV").css("border-right", "14px solid #3F3");
            } else {
              if (PosV > -148) {
                $(".LevelMarker").css("visibility", "visible");
                $(".arrowRV").css("border-left", "14px solid #999");
              }
            }
            $(".LevelMarker").css("top", topVal);
          } else {
            PosV--
            //posVoffs = PosV/(163/amplitude);
            if (ACDC == 0) {
              AmpPlot(1000);
            } else {
              AmpPlot(amplitude);
            }
            var topVal = (157 - PosV).toString() + "px";
            if (PosV < -148) {
              $(".LevelMarker").css("visibility", "hidden");
              $(".arrowRV").css("border-left", "14px solid #3F3");
            } else {
              if (PosV < 152) {
                $(".LevelMarker").css("visibility", "visible");
                $(".arrowLV").css("border-right", "14px solid #999");
              }
            }
            $(".LevelMarker").css("top", topVal);
          }
        }
      }
    }
  });

});

function AdjAng(dialX, mdown, bm, e) {
  //var Knob = document.querySelector(".Knob");
  if (mdown == true) {
    var Offset
    var radius
    if (dialX == "T") {
      var Offset = $(".circT").offset();
      var radius = $(".circT").width() / 2;
    };
    if (dialX == "V") {
      var Offset = $(".circV").offset();
      var radius = $(".circV").width() / 2;
    };
    if (dialX == "F") {
      var Offset = $(".circF").offset();
      var radius = $(".circF").width() / 2;
    };
    if (dialX == "I") {
      var Offset = $(".circI").offset();
      var radius = $(".circI").width() / 2;
    };
    if (dialX == "PH") {
      var Offset = $(".circPH").offset();
      var radius = $(".circPH").width() / 2;
    };
    if (dialX == "PV") {
      var Offset = $(".circPV").offset();
      var radius = $(".circPV").width() / 2;
    };

    var OffsX = e.pageX - Offset.left;
    var OffsY = e.pageY - Offset.top;

    if (dialX == "PH") {
      if (OffsX < 20) {
        if (OffsY < LastY) {
          AddPosH = true;
        }
        if (OffsY > LastY) {
          AddPosH = false;
        }
      }
      if (OffsX > 20) {
        if (OffsY > LastY) {
          AddPosH = true;
        }
        if (OffsY < LastY) {
          AddPosH = false;
        }
      }
      //console.log(OffsX, OffsY, LastY, AddPosH);
      LastY = OffsY;
    }
    if (dialX == "PV") {
      if (OffsX < 20) {
        if (OffsY < LastX) {
          AddPosV = true;
        }
        if (OffsY > LastX) {
          AddPosV = false;
        }
      }
      if (OffsX > 20) {
        if (OffsY > LastX) {
          AddPosV = true;
        }
        if (OffsY < LastX) {
          AddPosV = false;
        }
      }
      LastX = OffsY;
    }

    var atan = Math.atan2(OffsX - radius, OffsY - radius);
    deg = -atan / (Math.PI / 180) + 180;
    var roundDeg = Math.round(deg);
    //console.log(roundDeg);
    if (bm == true) {

      Knob.style.transform = "rotate(" + roundDeg + "deg)";
      Knob.style.webkitTransform = "rotate(" + roundDeg + "deg)";
    }

    var ringVal = 0;
    if (deg > 180) {
      ringVal = deg - 180;
    } else {
      ringVal = deg + 180;
    }

    if (dialX == "T") {
      SnapValue(dialX);
    };

    if (dialX == "V") {
      SnapValue(dialX);
    };

    if (dialX == "F") {
      foc = (Math.round(ringVal / 36));
      if (foc == 10) {
        foc = 9;
      };
      foc = 10 - foc;
      FocusOffset = foc * 0.004;
      if (ACDC == 0) {
        AmpPlot(1000);
      } else {
        AmpPlot(amplitude);
      }
    };

    if (dialX == "I") {
      intens = (Math.round(ringVal / 36)) / 10;
      if (intens == 0) {
        intens = 0.1;
      };
      //getOptions();
      //plot = $.plot($("#SineW"), [getData()], options);
      AmpPlot(amplitude);
    };
  }
};

function SnapValue(dialX) {
  if (dialX == "T") {
    if (deg >= 345) {
      frequency = 12.5;
      posHoffs = 0.03
      posToffs = 0;
      if (TPressed) {
        if (PosH != 0) {
          pos = posToffs + (PosH * posHoffs);
        } else {
          pos = posToffs;
        }
      }
    };
    if (deg < 15) {
      frequency = 12.5;
      posHoffs = 0.03
      posToffs = 0;
      if (TPressed) {
        if (PosH != 0) {
          pos = posToffs + (PosH * posHoffs);
        } else {
          pos = posToffs;
        }
      }
    };
    if (deg >= 15 && deg < 45) {
      frequency = 25;
      posHoffs = 0.06
      posToffs = 0;
      if (TPressed) {
        if (PosH != 0) {
          pos = posToffs + (PosH * posHoffs);
        } else {
          pos = posToffs;
        }
      }
    };
    if (deg >= 45 && deg < 75) {
      frequency = 50;
      posHoffs = 0.12
      posToffs = 0;
      if (TPressed) {
        if (PosH != 0) {
          pos = posToffs + (PosH * posHoffs);
        } else {
          pos = posToffs;
        }
      }
    };
    if (deg >= 75 && deg < 105) {
      frequency = 125;
      posHoffs = 0.3
      posToffs = 0;
      if (TPressed) {
        if (PosH != 0) {
          pos = posToffs + (PosH * posHoffs);
        } else {
          pos = posToffs;
        }
      }
    };
    if (deg >= 105 && deg < 135) {
      frequency = 250;
      posHoffs = 0.6
      posToffs = 0;
      if (TPressed) {
        if (PosH != 0) {
          pos = posToffs + (PosH * posHoffs);
        } else {
          pos = posToffs;
        }
      }
    };
    if (deg >= 135 && deg < 180) {
      frequency = 500;
      posHoffs = 1.2
      posToffs = 0;
      if (TPressed) {
        if (PosH != 0) {
          pos = posToffs + (PosH * posHoffs);
        } else {
          pos = posToffs;
        }
      }
    };
    if (deg >= 180 && deg < 225) {
      frequency = 0.25;
      posHoffs = 0.0006
      posToffs = 0.09;
      if (TPressed) {
        if (PosH != 0) {
          pos = posToffs + (PosH * posHoffs);
        } else {
          pos = posToffs;
        }
      }
    };
    if (deg >= 225 && deg < 255) {
      frequency = 0.5;
      posHoffs = 0.0012
      posToffs = 0.21;
      if (TPressed) {
        if (PosH != 0) {
          pos = posToffs + (PosH * posHoffs);
        } else {
          pos = posToffs;
        }
      }
    };
    if (deg >= 255 && deg < 285) {
      frequency = 1.25;
      posHoffs = 0.003
      posToffs = 0.6;
      if (TPressed) {
        if (PosH != 0) {
          pos = posToffs + (PosH * posHoffs);
        } else {
          pos = posToffs;
        }
      }
    };
    if (deg >= 285 && deg < 315) {
      frequency = 2.5;
      posHoffs = 0.006
      posToffs = 1.2;
      if (TPressed) {
        if (PosH != 0) {
          pos = posToffs + (PosH * posHoffs);
        } else {
          pos = posToffs;
        }
      }
    };
    if (deg >= 315 && deg < 345) {
      frequency = 5;
      posHoffs = 0.012
      posToffs = 2.52;
      if (TPressed) {
        if (PosH != 0) {
          pos = posToffs + (PosH * posHoffs);
        } else {
          pos = posToffs;
        }
      }
    };
  };
  if (dialX == "V") {
    if (deg >= 345) {
      amplitude = 6.25;
      if (ACDC != 0) {
        AmpPlot(amplitude);
      }
    };
    if (deg < 15) {
      amplitude = 6.25;
      if (ACDC != 0) {
        AmpPlot(amplitude);
      }
    };
    if (deg >= 15 && deg < 45) {
      amplitude = 12.5;
      if (ACDC != 0) {
        AmpPlot(amplitude);
      }
    };
    if (deg >= 45 && deg < 75) {
      amplitude = 25;
      if (ACDC != 0) {
        AmpPlot(amplitude);
      }
    };
    if (deg >= 75 && deg < 105) {
      amplitude = 62.5;
      if (ACDC != 0) {
        AmpPlot(amplitude);
      }
    };
    if (deg >= 105 && deg < 135) {
      amplitude = 125;
      if (ACDC != 0) {
        AmpPlot(amplitude);
      }
    };
    if (deg >= 135 && deg < 180) {
      amplitude = 250;
      if (ACDC != 0) {
        AmpPlot(amplitude);
      }
    };
    if (deg >= 180 && deg < 225) {
      amplitude = 0.125;
      if (ACDC != 0) {
        AmpPlot(amplitude);
      }
    };
    if (deg >= 225 && deg < 255) {
      amplitude = 0.25;
      if (ACDC != 0) {
        AmpPlot(amplitude);
      }
    };
    if (deg >= 255 && deg < 285) {
      amplitude = 0.625;
      if (ACDC != 0) {
        AmpPlot(amplitude);
      }
    };
    if (deg >= 285 && deg < 315) {
      amplitude = 1.25;
      if (ACDC != 0) {
        AmpPlot(amplitude);
      }
    };
    if (deg >= 315 && deg < 345) {
      amplitude = 2.5;
      if (ACDC != 0) {
        AmpPlot(amplitude);
      }
    };
  };
};

function AmpPlot(ampli) {
  if (CabConn == false) {
    ampli = 1000;
  };
  if (ACDC == 2) {
    posVoffs = PosV / (160 / ampli);
    FocusOffset = foc * 0.004;
    ampmax = ((ampli / 2) + FocusOffset) - posVoffs;
    ampmin = (((ampli / 2) + FocusOffset) * -3) - posVoffs;

    getOptions();
    plot = $.plot($("#SineW"), [getData()], options);
  } else {
    posVoffs = PosV / (160 / ampli);
    FocusOffset = foc * 0.004;
    ampmax = (ampli + FocusOffset) - posVoffs;
    ampmin = ((ampli + FocusOffset) * -1) - posVoffs;

    getOptions();
    plot = $.plot($("#SineW"), [getData()], options);
  };
};

function SnapAng(mdown, e) {
  mdown = false
  if (deg >= 345) {
    Knob.style.transform = "rotate(0deg)";
    Knob.style.webkitTransform = "rotate(0deg)";
  }
  if (deg < 15) {
    Knob.style.transform = "rotate(0deg)";
    Knob.style.webkitTransform = "rotate(0deg)";
  }
  if (deg >= 15 && deg < 45) {
    Knob.style.transform = "rotate(30deg)";
    Knob.style.webkitTransform = "rotate(30deg)";
  }
  if (deg >= 45 && deg < 75) {
    Knob.style.transform = "rotate(60deg)";
    Knob.style.webkitTransform = "rotate(60deg)";
  }
  if (deg >= 75 && deg < 105) {
    Knob.style.transform = "rotate(90deg)";
    Knob.style.webkitTransform = "rotate(90deg)";
  }
  if (deg >= 105 && deg < 135) {
    Knob.style.transform = "rotate(120deg)";
    Knob.style.webkitTransform = "rotate(120deg)";
  }
  if (deg >= 135 && deg < 180) {
    Knob.style.transform = "rotate(150deg)";
    Knob.style.webkitTransform = "rotate(150deg)";
  }
  if (deg >= 180 && deg < 225) {
    Knob.style.transform = "rotate(210deg)";
    Knob.style.webkitTransform = "rotate(210deg)";
  }
  if (deg >= 225 && deg < 255) {
    Knob.style.transform = "rotate(240deg)";
    Knob.style.webkitTransform = "rotate(240deg)";
  }
  if (deg >= 255 && deg < 285) {
    Knob.style.transform = "rotate(270deg)";
    Knob.style.webkitTransform = "rotate(270deg)";
  }
  if (deg >= 285 && deg < 315) {
    Knob.style.transform = "rotate(300deg)";
    Knob.style.webkitTransform = "rotate(300deg)";
  }
  if (deg >= 315 && deg < 345) {
    Knob.style.transform = "rotate(330deg)";
    Knob.style.webkitTransform = "rotate(330deg)";
  }
};

//GND/DC/AC Switch
$(".Switch").click(function(e) {
  //var parentOffset = $(this).parent().offset(); 
  var Offset = $(this).offset();
  var OffsY = e.pageY - Offset.top;
  //console.log(OffsY);
  if (OffsY < 20) {
    $(".SwitchPlug").css("top", "1px");
    ACDC = 2;
    AmpPlot(amplitude);
  } else {
    if (OffsY > 40) {
      $(".SwitchPlug").css("top", "39px");
      ACDC = 0;
      AmpPlot(1000);
    } else {
      $(".SwitchPlug").css("top", "20px");
      ACDC = 1;
      AmpPlot(amplitude);
    }
  }
  if (PWRON) {
    switch (ACDC) {

      case 0:
        $("#DC").css("color", "#999");
        $("#AC").css("color", "#999");
        $("#GND").css("color", "#3D3");
        break;
      case 1:
        $("#DC").css("color", "#999");
        $("#AC").css("color", "#3D3");
        $("#GND").css("color", "#999");
        break;
      case 2:
        $("#DC").css("color", "#3D3");
        $("#AC").css("color", "#999");
        $("#GND").css("color", "#999");
        break;
    }
  }
});