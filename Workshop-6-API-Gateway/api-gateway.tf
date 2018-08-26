provider "aws" {
  region = "ap-southeast-1"
  shared_credentials_file = "~/.aws/credentials"
}

data "aws_lambda_function" "lambda_playground" {
  function_name = "lambda_playground"
  qualifier = "1"
}

resource "aws_api_gateway_rest_api" "api-gateway-playground" {
  name        = "api-gateway-playground"
  description = "This is an API Gateway playground"

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}



resource "aws_api_gateway_method" "api-gateway-playground" {
  rest_api_id   = "${aws_api_gateway_rest_api.api-gateway-playground.id}"
  resource_id   = "${aws_api_gateway_rest_api.api-gateway-playground.root_resource_id}"
  http_method   = "GET"
  authorization = "NONE"
}


resource "aws_api_gateway_integration" "lambda" {
  rest_api_id = "${aws_api_gateway_rest_api.api-gateway-playground.id}"
  resource_id = "${aws_api_gateway_method.api-gateway-playground.resource_id}"
  http_method = "${aws_api_gateway_method.api-gateway-playground.http_method}"

  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "${data.aws_lambda_function.lambda_playground.invoke_arn}"
}


resource "aws_api_gateway_deployment" "api-gateway-playground" {
  depends_on = ["aws_api_gateway_integration.lambda"]

  rest_api_id = "${aws_api_gateway_rest_api.api-gateway-playground.id}"
  stage_name  = "dev"
}

resource "aws_api_gateway_stage" "prod" {
  stage_name = "prod"
  rest_api_id = "${aws_api_gateway_rest_api.api-gateway-playground.id}"
  deployment_id = "${aws_api_gateway_deployment.api-gateway-playground.id}"
}

output "api-gateway-playground-url" {
  value = "${aws_api_gateway_stage.prod.invoke_url }"
}
