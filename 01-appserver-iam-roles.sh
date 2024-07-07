#!/bin/bash
aws iam create-role --role-name CodeDeployServiceRole --assume-role-policy-document file://CodeDeploy-TrustPolicy.json --profile prod
aws iam attach-role-policy --policy-arn arn:aws:iam::aws:policy/AWSCodeDeployFullAccess --role-name CodeDeployServiceRole --profile prod
aws iam create-role --role-name CodeBuildServiceRole --assume-role-policy-document file://CodeBuild-TrustPolicy.json --profile prod
aws iam attach-role-policy --policy-arn arn:aws:iam::aws:policy/AWSCodeBuildAdminAccess --role-name CodeBuildServiceRole --profile prod
aws iam create-role --role-name CodePipelineServiceRole --assume-role-policy-document file://CodePipeline-TrustPolicy.json --profile prod
aws iam attach-role-policy --policy-arn arn:aws:iam::aws:policy/AWSCodePipeline_FullAccess --role-name CodePipelineServiceRole --profile prod