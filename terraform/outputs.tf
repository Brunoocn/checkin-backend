output "api_gateway_url" {
  description = "URL publica do API Gateway"
  value       = aws_apigatewayv2_stage.default.invoke_url
}

output "api_gateway_id" {
  description = "ID do API Gateway"
  value       = aws_apigatewayv2_api.api.id
}
