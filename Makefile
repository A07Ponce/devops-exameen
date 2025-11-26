.PHONY: build run test push

IMAGE=suntaxi:1.0.5
REGISTRY_IMAGE=ghcr.io/A07Ponce/suntaxi:1.0.5

build:
	docker build -t $(IMAGE) .

run:
	docker run --rm -p 1001:1001 $(IMAGE)

test:
	python -m pip install -r requirements.txt
	pytest -q

push:
	# requiere login previo a GHCR
	docker tag $(IMAGE) $(REGISTRY_IMAGE)
	docker push $(REGISTRY_IMAGE)