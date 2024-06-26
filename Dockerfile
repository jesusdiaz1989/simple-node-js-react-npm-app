FROM jenkins/jenkins:lts

USER root

# Install Node.js and npm

RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

docker build -t my-jenkins-node .
docker run -d -p 8080:8080 -p 50000:50000 my-jenkins-node

# Switch back to Jenkins user
USER jenkins

WORKDIR /app

ADD package.json package-lock.json /app/
RUN npm install

EXPOSE 3000

ADD . /app

CMD ["node", "index"]
