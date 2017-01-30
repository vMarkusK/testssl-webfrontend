<a name="Title">
# Title

Docker Image - estssl-Webfrontend

|Navigation|
|-----------------|
|[About](#About)|

<a name="About">
# About
[*Back to top*](#Title)

Project Owner: Markus Kraus [@vMarkus_K](https://twitter.com/vMarkus_K)

Project WebSite: [mycloudrevolution.com](http://mycloudrevolution.com/)

Project on DockerHub: [testssl-webfrontend](https://hub.docker.com/r/mycloudrevolution/testssl-webfrontend/)

Project Details: 

This Docker Image is based in the [testssl.sh-webfrontend](https://github.com/TKCERT/testssl.sh-webfrontend) Project from [thyssenkrupp CERT](https://github.com/TKCERT).
The testssl.sh-webfrontend Application uses the [testssl.sh](https://github.com/drwetter/testssl.sh) Script.

```
docker pull mycloudrevolution/testssl-webfrontend
docker run --rm --name testssl -p 5000:5000 mycloudrevolution/testssl-webfrontend
```
