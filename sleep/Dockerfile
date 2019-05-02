FROM  busybox:latest

LABEL "com.github.actions.name"="sleep"
LABEL "com.github.actions.description"="Sleep workflow for a required amount of time"
LABEL "com.github.actions.icon"="moon"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/rays-of-sunshine-app/actions"
LABEL "homepage"="https://github.com/rays-of-sunshine-app/actions/README.md"
LABEL "maintainer"="rosa <rosa@github.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

