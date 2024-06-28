output "invoke_url" {
  value = aws_api_gateway_deployment.bucket_api_deployment.invoke_url
}



output "api_id"{
  
  value = aws_api_gateway_rest_api.bucket_api.id
}

output "stage_name"{
  
  value =  aws_api_gateway_deployment.bucket_api_deployment.stage_name
}
