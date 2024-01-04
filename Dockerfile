FROM python:latest

WORKDIR /app

COPY README.md /app/README.md

RUN pip install grip

EXPOSE 8080

CMD ["grip", "--title", "", "README.md", "localhost:8080"]
