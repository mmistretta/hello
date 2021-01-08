# Prereqs

- docker installed and running
- OpenShift 4 cluster 
- oc tools 

# Deploying

1. Inspect the Dockerfile and notice which cpp file it calls out.  Feel free to adjust to the code of your choice
2. If you are planning to push your image to a registry such as quay, create a credentials file such as one named rhsm.secret.yaml with content like this
```
RH_USERNAME=<insert your username>
RH_PASSWORD=<insert your password>
```
3. Run a docker build, for example
```
DOCKER_BUILDKIT=1 docker build --progress=plain --secret id=rhsm,src=rhsm.secret.yaml -t quay.io/mcochran/cpp-hello:latest -f Dockerfile .
```
4. Push your image like this
```
docker push quay.io/mcochran/cpp-hello:latest
```
5. Login to your OpenShift cluster using `oc login` and select your project using `oc project <yourProject>`
6. Update pod.yaml with your image name
7. Run the following to deploy your code.  If it is short running you may miss it even running in the OpenShift console, but don't worry if you look at pods you can still see the logs afterwards to ensure things worked. 
```
oc create -f pod.yaml
```
