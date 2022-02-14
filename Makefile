lint:
	flake8 . --statistics --tee
test: lint
	pytest --cov=app . --cov-report xml:reports/coverage/coverage.xml --junitxml=reports/junit/junit.xml

