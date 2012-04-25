deploy:
	@bin/feed_images.sh
	rsync -avz "_site/" web2.helicoid.net:/var/www/alexyoung.org/

