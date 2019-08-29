# Stage 0, "build-stage"
FROM node:10-alpine as build-stage

WORKDIR /app
COPY package*.json /app/
RUN yarn
COPY ./ /app/
RUN yarn build

# Stage 1: "Real image"
FROM nginx:1.17.3-alpine

COPY --from=build-stage /app/build/ /usr/share/nginx/html
COPY --from=build-stage /app/nginx/nginx.conf /etc/nginx/conf.d/default.conf