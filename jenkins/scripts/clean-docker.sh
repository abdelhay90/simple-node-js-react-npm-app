#sh 'docker stop $(docker ps -q)'
#sh 'docker rm $(docker ps -q)'
#sh 'docker rmi -f $(docker images registry-1.docker.io/aabdelhay/test-app -q)'

#removing container
containers=`docker ps -q`
if [ ! -z containers ]
then
docker stop $(docker ps -q)
docker rm $(docker ps -q)
else
echo "No containers found for cleanup"
fi
#removing images
images=`docker images registry-1.docker.io/aabdelhay/test-app -q`
if [ ! -z images ]
then
docker rmi -f $(docker images registry-1.docker.io/aabdelhay/test-app -q)
else
echo "No images found for cleanup"
fi