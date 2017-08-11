#!/usr/bin/env bash

echo "stopping running application"

ssh $DEPLOY_USER@$DEPLOY_HOST 'docker stop dodsv'
ssh $DEPLOY_USER@$DEPLOY_HOST 'docker rm dodsv'

echo "pulling latest version of the code"

ssh $DEPLOY_USER@$DEPLOY_HOST 'docker pull cuznerdexter/cuz-dex-hub:latest'

echo "starting new version"

ssh $DEPLOY_USER@$DEPLOY_HOST 'docker run -d --restart=always --name dodsv -p 3000:4000 cuznerdexter/cuz-dex-hub:latest'

echo "success!"

exit 0