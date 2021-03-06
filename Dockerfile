FROM node:alpine
WORKDIR '/usr/app'
COPY ./package*.json ./
RUN yarn install
COPY ./ ./
RUN yarn build

FROM nginx
EXPOSE 80
COPY --from=0 /usr/app/build /usr/share/nginx/html

# docker build -t <container-tag> .
# docker run -p 80:80 <container-id>