FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y docker.io curl unzip \
 && curl -fsSL https://releases.hashicorp.com/terraform/1.9.0/terraform_1.9.0_linux_amd64.zip -o tf.zip \
 && unzip tf.zip -d /usr/local/bin && rm tf.zip
USER jenkins