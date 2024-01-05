FROM python:latest AS build

WORKDIR /app

COPY README.md /app/README.md

RUN pip install grip

RUN grip --wide --export --title="Vibe Social" README.md

FROM nginx:latest

WORKDIR /usr/share/nginx/html

COPY --from=build /app/README.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

