resource "aws_api_gateway_deployment" "example" {
  rest_api_id = aws_api_gateway_rest_api.example.id
  stage_name  = "v1"

  depends_on = [aws_api_gateway_integration.example_integration]
}

output "api_url" {
  value = aws_api_gateway_deployment.example.invoke_url
}
