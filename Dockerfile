FROM python:3.9-slim

WORKDIR /app

COPY app.py .  
COPY templates ./templates   # <--- Add this line to copy templates folder

RUN pip install flask
EXPOSE 80

CMD ["python", "app.py"]
