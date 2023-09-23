# 
FROM python:3.11-slim

# 
WORKDIR /SIH_BACKND

# # 
COPY ./requirements.txt /SIH_BACKND/requirements.txt

# # 
RUN pip install --no-cache-dir --upgrade -r /SIH_BACKND/requirements.txt

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y


# # 
COPY . /SIH_BACKND

# #
WORKDIR /SIH_BACKND
EXPOSE 8000

# 
# CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", ]
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

# COPY . /app/