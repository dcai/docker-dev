docker-base:
	docker build -t dcai/ubuntu-base base/
docker-dev:
	docker build -t dcai/dev dev/

docker-kube:
	docker build -t dcai/kube kube/
