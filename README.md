# aws-codesuite

## 1. Create IAM roles and policies required for CodeDeploy, CodeBuild and CodePipeline services
### bash 01-appserver-iam-roles.sh

## 2. Create CodeDeploy application
### bash 02-appserver-codedeploy-app.sh

## 3. Create CodeDeploy deployment group
### aws deploy create-deployment-group --cli-input-json file://03-appserver-codedeploy-dg.json --profile prod

## 4. Create CodeBuild build project
### aws codebuild create-project --cli-input-json file://04-appserver-codebuild.json --profile prod

## 5. Create CodePipeline pipeline using all previously created resources 
### aws codepipeline create-pipeline --cli-input-json file://05-appserver-codepipeline.json --profile prod