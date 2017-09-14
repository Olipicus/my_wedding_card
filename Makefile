docker-run : 
	docker run -d -p 443:443 \
	-v /etc/letsencrypt/live/www.olipicus.com/fullchain.pem:/etc/nginx/ssl/server.crt:ro \
	-v /etc/letsencrypt/live/www.olipicus.com/privkey.pem:/etc/nginx/ssl/server.key:ro \
	-v $(pwd)/nginx.conf:/etc/nginx/nginx.conf:ro \
	-v $(pwd)/web/:/www/:ro nginx:alpine