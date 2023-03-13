up:
	docker build -t nest-app .
	docker run -p 2222:22 -it nest-app
down:
	docker stop nest-app
stop:
	docker stop $(docker container ls)
