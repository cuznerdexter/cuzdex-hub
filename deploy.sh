#!/usr/bin/env bash

echo "stopping running application"
ssh $DEPLOY_USER@$DEPLOY_HOST 'docker-compose down cuznerdexter/cuzdex-hub:latest'

# ssh $DEPLOY_USER@$DEPLOY_HOST 'docker stop dodsv'
# ssh $DEPLOY_USER@$DEPLOY_HOST 'docker rm dodsv'

# echo "pulling latest version of the code"
# ssh $DEPLOY_USER@$DEPLOY_HOST 'docker pull cuznerdexter/cuzdex-hub:latest'

# echo "starting new version"
# ssh $DEPLOY_USER@$DEPLOY_HOST 'docker run -d --restart=always --name dodsv -p 3000:5000 cuznerdexter/cuzdex-hub:latest'
# echo "success!"

echo "pulling latest version of the code"
ssh $DEPLOY_USER@$DEPLOY_HOST 'docker-compose up -d cuznerdexter/cuzdex-hub:latest'

exit 0