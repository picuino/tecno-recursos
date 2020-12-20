var page = require('webpage').create(),
    system = require('system'),
    address, output, size;

address = system.args[1];
output = system.args[2];
page.viewportSize = { 
   width: parseInt(system.args[3], 10), 
	height: 360 };
page.zoomFactor = parseInt(system.args[4], 10)/100.0;

page.open(address, function (status) {
    if (status !== 'success') {
        console.log('Unable to load the address!');
        phantom.exit(1);
    } else {
        window.setTimeout(function () {
				var height = page.evaluate(function() { return document.body.offsetHeight })
				page.viewportSize.height = height + 16 ;
            page.render(output);
            phantom.exit();
        }, 200);
    }
})
