FROM python:3.7.2-alpine3.8

WORKDIR /app

# Install dependencies.
ADD requirements.txt /app
RUN cd /app && \
    pip install --no-cache-dir -r requirements.txt

# Add actual source code.
ADD blockchain.py /app

EXPOSE 5000

CMD ["python", "blockchain.py", "--port", "5000"]
