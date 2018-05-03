docker rmi -f sprabhune/Hellonode:master || echo "master branch moving on"
docker tag "sprabhune/Hellonode:${BUILD_TAG}"sprabhune/Hellonode:master
docker push sprabhune/Hellonode:master
