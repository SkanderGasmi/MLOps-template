.PHONY: setup run test clean docker-build docker-run

setup:
	bash setup.sh

run:
	python src/main.py

test:
	python -m unittest discover -s tests

clean:
	rm -rf __pycache__/ venv/

docker-build:
	docker build -t mlops-template .

docker-run:
	docker run -it --rm -p 8888:8888 mlops-template
