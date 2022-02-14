lint:
	flake8 . --statistics --tee
test: lint
	pytest .

