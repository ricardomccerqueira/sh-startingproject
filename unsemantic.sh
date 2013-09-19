echo "step 1 / 4 - cloning unsemantic"

git clone https://github.com/nathansmith/unsemantic.git


echo "step 2 / 4 - removing unecessary files and folders"

mv unsemantic www

rm www/.gitignore
rm www/Gemfile*
rm -rf www/.git*
rm www/adapt*
rm www/responsive-rtl*
rm www/README*
rm www/config*

mv www/assets/javascripts www/js
mv www/assets/stylesheets www/css
mv www/assets/sass www/sass

rm -rf www/assets
rm -rf www/css/*

cd www/sass/

for item in *.sass
do
	if test "$item" != "unsemantic-grid-responsive.sass" && test "$item" != "ie.sass"; then
		rm "$item"
	fi
done

rm partials/_demo.sass
cd ../../
rm www/responsive.html


echo "step 3 / 4 - creating project files"
	
echo '<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>'$SITENAME'</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!--[if lt IE 9]>
		  <script src="js/html5.js"></script>
		<![endif]-->
		<!--[if (gt IE 8) | (IEMobile)]><!-->
		  <link rel="stylesheet" href="css/unsemantic-grid-responsive.css" />
		<!--<![endif]-->
		<!--[if (lt IE 9) & (!IEMobile)]>
		  <link rel="stylesheet" href="css/ie.css" />
		<![endif]-->

        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
		
		<header class="fluid-container">
			<div class="grid-container">

			</div>
		</header>

		<div id="main-wrapper" class="fluid-container">
			READY
		</div>	
	
		<footer class="fluid-container">
			<div class="grid-container">

			</div>
		</footer>
        
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>' > www/index.html


echo "step 4 / 4 - removing .sh"

##cd ../
##rm unsemantic.sh


echo "WORK TIME"