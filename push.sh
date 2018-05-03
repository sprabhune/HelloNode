docker rmi -f sprabhune/HelloNode:master || echo "master branch moving on"
docker tag "sprabhune/HelloNode:${BUILD_TAG}"sprabhune/HelloNode:master
docker push sprabhune/HelloNode:master
