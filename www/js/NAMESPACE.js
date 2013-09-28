var NAMESPACE={
	init:function(){
		conditionizr({
	        debug      : false,
	        ieLessThan : {
	            active: true,
	            version: '9',
	            scripts: false,
	            styles: false,
	            classes: true
	        },
	        chrome     : { scripts: false, styles:false, classes: true, customScript: false },
	        safari     : { scripts: false, styles:false, classes: true, customScript: false },
	        opera      : { scripts: false, styles:false, classes: true, customScript: false },
	        firefox    : { scripts: false, styles:false, classes: true, customScript: false },
	        ie10       : { scripts: false, styles:false, classes: true, customScript: false },
	        ie9        : { scripts: false, styles:false, classes: true, customScript: false },
	        ie8        : { scripts: false, styles:false, classes: true, customScript: false },
	        ie7        : { scripts: false, styles:false, classes: true, customScript: false },
	        ie6        : { scripts: false, styles:false, classes: true, customScript: false },
	        retina     : { scripts: false, styles:false, classes: true, customScript: false },
	        touch      : { scripts: false, styles:false, classes: true, customScript: false },
	        mac        : true,
	        win        : true,
	        x11        : true,
	        linux      : true
	    });
	}
}
