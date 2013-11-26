echo "Please Enter site title ( no spaces )"
read siteTitle

echo "Please Enter javascript namespace"
read namespace

echo "Download unsemantic"

git clone https://github.com/nathansmith/unsemantic.git

echo "Cleaning unsemantic folder"

cp -r unsemantic/assets/sass www/

cd www/sass/

for item in *.sass
do
	if test "$item" != "unsemantic-grid-base.sass" && test "$item" != "unsemantic-grid-desktop.sass" && test "$item" != "unsemantic-grid-tablet.sass" && test "$item" != "unsemantic-grid-responsive-tablet.sass" && test "$item" != "unsemantic-grid-mobile.sass" && test "$item" != "ie.sass"; then
		rm "$item"
	fi
done

rm partials/_demo.sass
rm partials/_text.sass

cd ../../

rm -rf unsemantic

echo "Creating javascript folders"

mkdir www/js/plugins
mkdir www/js/lib

mv www/js/NAMESPACE.js www/js/$namespace.js


echo "Downloading jquery2"

curl http://code.jquery.com/jquery-2.0.3.min.js > www/js/lib/jquery2.js

echo "Downloading jquery1.latest"

curl http://code.jquery.com/jquery-latest.min.js > www/js/lib/jquery.js

echo "Downloading knockout"

curl http://knockoutjs.com/downloads/knockout-2.3.0.js > www/js/lib/knockout.js

echo "Downloading underscorejs"

curl http://underscorejs.org/underscore-min.js > www/js/lib/underscore.js

echo "Downloading sammyjs"

curl https://raw.github.com/quirkey/sammy/master/lib/min/sammy-latest.min.js > www/js/lib/sammyjs.js

echo "Downloading conditionizr"

curl https://raw.github.com/conditionizr/conditionizr/master/dist/conditionizr.js > www/js/lib/conditionizr.js

echo "Downloading enquirejs"

curl https://raw.github.com/WickyNilliams/enquire.js/master/dist/enquire.js > www/js/lib/enquire.js

echo "Downloading html5 boilerplate plugin rewrite"

curl https://raw.github.com/h5bp/html5-boilerplate/master/js/plugins.js > www/js/plugins/plugins.js

echo "Editing FIles to match configuration"

sed -i '' 's/SITE_TITLE/'$siteTitle'/' www/index.html
sed -i '' 's/NAMESPACE/'$namespace'/' www/index.html
sed -i '' 's/NAMESPACE/'$namespace'/' www/js/$namespace.js 
sed -i '' 's/NAMESPACE/'$namespace'/' www/js/Config.js
sed -i '' 's/NAMESPACE/'$namespace'/' www/js/Routes.js

echo "Cleaning the folder"

rm -rf .git
rm README.md
rm buildproject.sh

echo "WORK TIME"