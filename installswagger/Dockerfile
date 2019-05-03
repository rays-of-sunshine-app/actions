FROM openjdk:latest

RUN apt-get install -y curl \
  && curl -sL https://deb.nodesource.com/setup_9.x | bash - \
  && apt-get install -y nodejs \
  && curl -L https://www.npmjs.com/install.sh | sh
RUN npm install -g grunt grunt-cli

LABEL "com.github.actions.name"="Install swaggerCodeGen"
LABEL "com.github.actions.description"="setup and configure swagger-codegen via npm install"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/rays-of-sunshine-app/rosa"
LABEL "homepage"="https://github.com/rays-of-sunshine-app/rosa/blob/actions-add-install-and-test-for-client/.github/installswagger/README.md"
LABEL "maintainer"="rosa <rosa@github.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

