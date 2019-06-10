#!/bin/bash

set -e
# ENVIRONMENT VARIABLES
# ECS_CLUSTER
# AWS_ACCOUNT_ID
# AWS_REGION
# IMAGE_NAME

SERVICE_NAME="flask-app"
TASK_FAMILY="flask-app"
ECS_TASK_DEFINITION_TEMPLATE="task.json"
ECS_TASK="task-ecs.json"
ECR_IMAGE="${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/${IMAGE_NAME}:${CODEBUILD_RESOLVED_SOURCE_VERSION}"
# Register Task Definition
sed -e "s;%ECR_IMAGE%;${ECR_IMAGE};g" ${ECS_TASK_DEFINITION_TEMPLATE} > ${ECS_TASK}
aws ecs register-task-definition --family ${TASK_FAMILY} --cli-input-json file://${ECS_TASK}

