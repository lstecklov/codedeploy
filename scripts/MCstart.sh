#!/bin/bash

cd /opt/codedeploy

export PORT=80

if [[ $NODE_ENV == "production" || $NODE_ENV == "staging" ]]; then
  npm install && npm start 
elif [[ $NODE_ENV == "test" ]]; then 
  npm test  
else
  npm install && npm start
fi


