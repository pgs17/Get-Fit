# 
 FROM python:3.9

# 
WORKDIR /SIH_BACKEND

# # 
COPY ./requirements.txt .

# # 
RUN pip install --no-cache-dir --upgrade -r  requirements.txt

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y


# # 
COPY . .

# #
 
EXPOSE 8000

# 
# CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", ]
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

# COPY . /app/