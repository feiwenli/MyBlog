FROM registry.cn-hangzhou.aliyuncs.com/choerodon-tools/hugo:0.40.3

COPY . /app
WORKDIR /app
RUN hugo

FROM registry.saas.hand-china.com/tools/nginx:latest
COPY --form=0 /app/public /usr/share/nginx/html



