docker-base:
	docker build -f Dockerfile.base -t dcai/ubuntu-base:latest .

docker-dev:
	docker build -f Dockerfile.dev -t dcai/dev:latest .

docker-kube:
	docker build -f Dockerfile.kube -t dcai/kube:latest .

push-base:
	docker push dcai/ubuntu-base:latest

push-kube:
	docker push dcai/kube:latest
