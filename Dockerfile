#syntax=docker/dockerfile:1.4
FROM zerefdragoneel/stable-diffusion-2d:v19.0.0
RUN pip install gsutil
WORKDIR /src
COPY . /src
EXPOSE 8080
CMD ["python", "main.py"]