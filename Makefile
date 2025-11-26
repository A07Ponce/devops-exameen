run:
	python app.py

test:
	pytest -q

build:
	docker build -t sani:local .
