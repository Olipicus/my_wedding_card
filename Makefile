docker-run : 
	docker run -d -p 443:443 \
	-v /etc/letsencrypt/live/f-and-tong.info/fullchain.pem:/etc/nginx/ssl/server.crt:ro \
	-v /etc/letsencrypt/live/f-and-tong.info/privkey.pem:/etc/nginx/ssl/server.key:ro \
	-v $(PWD)/nginx.conf:/etc/nginx/nginx.conf:ro \
	-v $(PWD)/web/:/www/:ro --name my-wedding-card nginx:alpine
