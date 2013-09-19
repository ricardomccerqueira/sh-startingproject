echo "step 1 / 5 - cloning unsemantic"
	##git clone https://github.com/nathansmith/unsemantic.git

echo "step 2 / 5 - removing unecessary files and folders"
	##mv unsemantic www
	
	rm www/.gitignore
	rm www/Gemfile*
	rm www/-rf .git*
	rm www/adapt*
	rm www/responsive-rtl*
	rm www/README*
	rm www/config*

	mv www/assets/javascripts www/js
	mv www/assets/stylesheets www/css
	mv www/assets/sass www/sass

	rm -rf www/assets
	rm -rf www/css/*


echo "step 3 / 5 - renaming files"


echo "step 4 / 5 - creating project files"


echo "step 5 / 5 - removing .sh"
##cd ../
##rm unsemantic.sh

echo "ENJOY"