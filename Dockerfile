 FROM node:8 as build
WORKDIR /app
COPY . /app
RUN npm install -f
#RUN npm i npm@latest && npm run build
#RUN npm run build

FROM nginx:latest
COPY --from=build /app/build /usr/share/nginx/html
