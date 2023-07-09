setup:
	python3 -m venv ~/.MLOpsAI
	echo "source ~/.MLOpsAI/bin/activate "
	
install:
	pip3 install --upgrade pip &&\
	 pip3 install -r requirements.txt

test:
	python -m pytest -vv -cov=hello ./UnitTest/hello_test.py

lint:
	pylint --disable R,C ./UnitTest/hello.py	