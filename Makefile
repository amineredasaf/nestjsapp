up:
	# docker-compose up
	# # docker build -t nest-app .
	docker run -p 2222:22 -it nest-container
down:
	docker stop nest-container
stop:
	docker stop $(docker container ls)

delimg:
	docker rmi $(docker images ls -aq)
ls:
	@echo containers
	@docker container ls
	@echo images:
	@docker image ls

img-show:
	@docker images
con-show:
	@docker ps -a
vol-show:
	@docker volume ls
net-show:
	@docker network ls

prune:
	@docker system prune -a