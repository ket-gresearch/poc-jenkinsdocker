# poc-jenkinsdocker

docker build -t k3tt3k/jenkins-cac:latest -f Dockerfile .
docker login -u "<username>" -p "<password>" docker.io
docker push k3tt3k/jenkins-cac:latest

docker run --name jenkins --rm -p 8080:8080 --env JENKINS_ADMIN_ID=<username> --env JENKINS_ADMIN_PASSWORD=<password> jenkins:jcasc

docker desktop
{
  "experimental": true
}

