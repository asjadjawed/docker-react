FROM node:alpine as builder
WORKDIR /usr/app
COPY ./package.json ./
RUN yarn install
COPY ./ ./
RUN yarn build

FROM nginx
EXPOSE 80
COPY --from=builder /usr/app/build /usr/share/nginx/html

# docker build -t <container-tag> .
# docker run -p 80:80 <container-id>