IMAGENAME=hauto.bridges.hisense-ac
CONTAINERNAME=hauto.bridges.hisense-ac
PORT=8888

.PHONY: build run exec stop clean all

build:
	@docker build -t ${IMAGENAME} .

run:
	@docker run -d --network hauto -p ${PORT}:${PORT} --name ${CONTAINERNAME} ${IMAGENAME}

exec:
	@docker exec -it ${CONTAINERNAME} sh

stop:
	@docker stop ${CONTAINERNAME}

clean:
	@docker rm ${CONTAINERNAME}
	@docker rmi ${IMAGENAME}