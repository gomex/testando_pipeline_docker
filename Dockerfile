FROM python:2.7
ADD src /code
WORKDIR /code
RUN pip install -r requirements.txt
CMD python app.py
EXPOSE 5000