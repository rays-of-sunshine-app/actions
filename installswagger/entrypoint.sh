#!/bin/sh
set -e

if [ -n "$NPM_AUTH_TOKEN" ]; then
  # Respect NPM_CONFIG_USERCONFIG if it is provided, default to $HOME/.npmrc
  NPM_CONFIG_USERCONFIG="${NPM_CONFIG_USERCONFIG-"$HOME/.npmrc"}"
  NPM_REGISTRY_URL="${NPM_REGISTRY_URL-registry.npmjs.org}"
  NPM_STRICT_SSL="${NPM_STRICT_SSL-true}"
  NPM_REGISTRY_SCHEME="https"
  if ! $NPM_STRICT_SSL
  then
    NPM_REGISTRY_SCHEME="http"
  fi

  # Allow registry.npmjs.org to be overridden with an environment variable
  printf "//%s/:_authToken=%s\\nregistry=%s\\nstrict-ssl=%s" "$NPM_REGISTRY_URL" "$NPM_AUTH_TOKEN" "${NPM_REGISTRY_SCHEME}://$NPM_REGISTRY_URL" "${NPM_STRICT_SSL}" > "$NPM_CONFIG_USERCONFIG"

  chmod 0600 "$NPM_CONFIG_USERCONFIG"
fi

echo "WORKSPACE: " $PWD

cd ./mobile
echo "MOBILE: " $PWD
mkdir client

echo "RUNNING: curl for swagger-codegen-cli.2.4.4.jar"
curl http://central.maven.org/maven2/io/swagger/swagger-codegen-cli/2.4.4/swagger-codegen-cli-2.4.4.jar --output ./swagger-codegen-cli-2.4.4.jar

echo  "OUTPUT DIRECTORY: " `ls -lrta`
chmod 777 swagger-codegen-cli-2.4.4.jar

echo "RUNNING: java -jar swagger-codegen-cli-2.4.4.jar generate -i ../api/rosa-api.yaml -l javascript -o client/. --additional-properties usePromises=true,useES6=true"
java -jar swagger-codegen-cli-2.4.4.jar generate -i ../api/rosa-api.yaml -l javascript -o client/. --additional-properties usePromises=true,useES6=true
