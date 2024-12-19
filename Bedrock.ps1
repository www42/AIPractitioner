$region = "eu-central-1"
$region = "us-east-1"
aws bedrock list-foundation-models --region $region --query "modelSummaries[*].{modelName:modelName,providerName:providerName,modelId:modelId}" --output table


# [Model support by AWS Region in Amazon Bedrock](https://docs.aws.amazon.com/bedrock/latest/userguide/models-regions.html)
$modelId = "anthropic.claude-v2"
$modelId = "meta.llama3-2-1b-instruct-v1:0"
$modelId = "amazon.nova-pro-v1:0"
$modelId = "amazon.nova-lite-v1:0"
aws bedrock get-foundation-model --model-identifier $modelId --region $region