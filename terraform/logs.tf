# logs.tf

# Set up cloudwatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "gdpr_api_log_group" {
  name              = "/ecs/gdpr-api-app"
  retention_in_days = 30

  tags {
    Name = "cb-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "gdpr_api_log_stream" {
  name           = "gdpr-api-log-stream"
  log_group_name = "${aws_cloudwatch_log_group.gdpr_api_log_group.name}"
}