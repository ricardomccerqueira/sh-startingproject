var NAMESPACE = (function(){
    function init(){
        mediaQuery();
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
                        loadCss('css/'+obj.css[i],obj.class);
                    }
                },

                match:function(){
                    var objs = document.getElementsByClassName(obj.class);

                    for(var i=0; i<objs.length; i++){
                        objs[i].disabled = null;
                    }
                },      
                                    
                unmatch:function(){
                    var objs = document.getElementsByClassName(obj.class);

                    for(var i=0; i<objs.length; i++){
                        objs[i].disabled = true;
                    }
                }
            });
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

    var public = {
        init:init
    }

    return public;
})();