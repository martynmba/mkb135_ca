#!/bin/bash
#fix_perms.sh
#Run this as admin from the drupal root directory
# http://drupal.stackexchange.com/questions/373/what-are-the-recommended-directory-permissions
#
   # 755 (-rwxr-xr-x)
   # 744 (-rwxr--r--)
   # 444 (-r--r--r--)
   # 775 (-rwxrwxr-x)
   # 700 (-rwx------)
#
#
# SETTINGS.PHP -/default/settings.php
	sudo chmod 444 ~/public_html/mkb135_ca/web/sites/default/settings.php
	#sudo chmod 444 ~/public_html/mkb135_ca/web/sites/default/settings.local.php
#
echo "SETTINGS.PHP > 444"
#
# HTACCESS 755
#	sudo chmod 755 ~/public_html/mkb135_ca/web/.htaccess
#
#echo "HTACCESS 755"
#
# HTACCESS 664
	sudo chmod 664 ~/public_html/mkb135_ca/web/.htaccess
#
echo "HTACCESS 664"
#
# LIBRARIES
	sudo chmod -R 755 ~/public_html/mkb135_ca/web/libraries
	sudo chown -R mkb:www-data ~/public_html/mkb135_ca/web/libraries
	# Make items in libraries s.t. configurations can be set via the database.
	#
	echo "LIBRARIES"
	#
# DEFAULT
	sudo chmod 775 ~/public_html/mkb135_ca/web/sites/default
	# /default on 775 
echo "DEFAULT"
#
# FILES
	sudo chown -R mkb:www-data ~/public_html/mkb135_ca/web/sites/default/files
	#
	sudo chmod -R 775 ~/public_html/mkb135_ca/web/sites/default/files
	# /default on 775 
	#
	sudo chmod -R g+s ~/public_html/mkb135_ca/web/sites/default/files
	# Set the "sticky" bit so all files created inside will have group of directory
	sudo chmod 444 ~/public_html/mkb135_ca/web/sites/default/files/.htaccess
	# Set the .htaccess perms
	#
echo "FILES"
#
# MODULES
	sudo chmod -R 755 ~/public_html/mkb135_ca/web/modules/contrib
echo "MODULES"
#
# CONFIG
	sudo chown -R mkb:www-data ~/public_html/mkb135_ca/config
echo "CONFIG"
#
# THEMES
	sudo chmod -R 755 ~/public_html/mkb135_ca/web/themes
	echo "THEMES"
#
echo "Finished"
#


