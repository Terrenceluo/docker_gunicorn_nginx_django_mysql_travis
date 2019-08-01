FROM python:3.7.4
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install --no-cache-dir -r requirements.txt -i https://pypi.douban.com/simple --trusted-host pypi.douban.com
EXPOSE "8001"
CMD ["gunicorn", "--bind", ":8001", "test_travis.wsgi:application"]
