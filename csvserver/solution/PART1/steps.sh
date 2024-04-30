
#docker build -t demoserver:1.0 .
#docker images
#docker run demoserver:1.0
#permission denied
#chmod 777 demoserver
#docker rmi demoserver:1.0
#docker build -t demoserver:1.0 .
#docker run demoserver:1.0
#error input file not found
#chmod 777 gencsv.sh
#./gencsv.sh 2 8 > inputFile
#Dockerfile edit
#
docker build -t demoserver:1.0 .
docker run -d  -p 9393:9300 demoserver:1.0 
