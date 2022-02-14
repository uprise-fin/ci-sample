lint:
	flake8 . --statistics --tee
test: lint
	pytest --cov=app . --cov-report xml:coverage.xml --junitxml=junit.xml
	coverage2clover < coverage.xml > clover.xml


