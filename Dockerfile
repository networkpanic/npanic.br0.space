FROM klakegg/hugo:ext-alpine-onbuild AS hugo

FROM nginx
COPY --from=hugo /target /usr/share/nginx/html