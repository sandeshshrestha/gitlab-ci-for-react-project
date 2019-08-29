# Gitlab ci/cd and dockerfile with nginx for react applications

## Important files
* nginx/nginx.conf
* .dockerignore
* .gitignore
* .gitlab-ci.yml
* Dockerfile

## Process 
* Create new repo in gitlab
* Create these variables in settings
    * $DOCKER_REGISTRY
    * $DOCKER_REGISTRY_USER
    * $DOCKER_REGISTRY_PASS
* Clone the repo
* run `npx create-react-app <NAME>`
* Copy important files list from above
* git add, commit and push