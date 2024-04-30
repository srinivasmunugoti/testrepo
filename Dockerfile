FROM almalinux:9.3-20231124
ENV CSVSERVER_BORDER=Orange
WORKDIR /demoserver
COPY . .
COPY ./inputdata /csvserver/inputdata
EXPOSE 9300
CMD ["/demoserver/demoserver"]
