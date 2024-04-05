docker-dev:
	docker build -f Dockerfile.dev -t dcai/dev:latest .

docker-kube:
	docker build -f Dockerfile.kube -t dcai/kube:latest .

docker-firebase:
	docker build -f Dockerfile.firebase -t dcai/firebase-tools:latest .

push-kube:
	docker push dcai/kube:latest

push-dev:
	docker push dcai/dev:latest

push:
	docker push dcai/firebase-tools:latest
