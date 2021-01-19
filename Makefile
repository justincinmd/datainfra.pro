.PHONY: devenv

devenv:
	python3.6 -m venv venv

docker-build:
	docker build -t dip .

docker-push:
	docker build -t gcr.io/datainfrapro/datainfrapro-app:latest .
	docker push gcr.io/datainfrapro/datainfrapro-app:latest
