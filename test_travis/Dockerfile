FROM python:3.7.4
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt entrypoint.sh /code/
RUN pip install --no-cache-dir -r requirements.txt -i https://pypi.douban.com/simple --trusted-host pypi.douban.com \
    && chmod +x entrypoint.sh
EXPOSE "8001"
CMD ["gunicorn", "--bind", ":8001", "test_travis.wsgi:application"]
