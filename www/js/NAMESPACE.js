var NAMESPACE = (function(){
    function init(){
        if(isIE() && isIE()<9){

        }else{
            mediaQuery();
        }
    };

    function mediaQuery(){
        for(var key in NAMESPACE.Config.MEDIA_QUERIES){
            create(NAMESPACE.Config.MEDIA_QUERIES[key]);
        }

        function create(obj){
            enquire.register(obj.query, { 
                deferSetup: obj.deferSetup,
                shouldDegrade: obj.shouldDegrade,

                setup:function(){
                    for(var i=0; i<obj.css.length; i++){
                        loadCss('css/'+obj.css[i],obj.className);
                    }
                },

                match:function(){
                    var objs = document.getElementsByClassName(obj.className);
                    switchImages(key);

                    for(var i=0; i<objs.length; i++){
                        objs[i].disabled = null;
                    }
                },      
                                    
                unmatch:function(){
                    var objs = document.getElementsByClassName(obj.className);

                    for(var i=0; i<objs.length; i++){
                        objs[i].disabled = true;
                    }
                }
            });
        }
    };

    function switchImages(format){
        for (var i =0; i<document.getElementsByTagName("img").length; i++){
            var attr = document.getElementsByTagName("img")[i].getAttribute(format);
            
            if(attr){
                document.getElementsByTagName("img")[i].setAttribute("src",attr);
            }
        }
    };

    function loadCss(url,id) {
        var link       = document.createElement("link");
            link.className = id;
            link.type  = "text/css";
            link.rel   = "stylesheet";
            link.href  = url;

        document.getElementsByTagName("head")[0].appendChild(link);
    };

    function isIE() {
        var browserNav = navigator.userAgent.toLowerCase();
        return (browserNav.indexOf('msie') != -1) ? parseInt(browserNav.split('msie')[1]) : false;
    };

    var public = {
    init:init
    }

    return public;
})();
