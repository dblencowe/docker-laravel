# logs.tf

# Set up cloudwatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "log_group" {
  name              = "/ecs/${var.app_name}-app"
  retention_in_days = 30

  tags {
    Name = "cb-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "log_stream" {
  name           = "${var.app_name}-log-stream"
  log_group_name = "${aws_cloudwatch_log_group.log_group.name}"
}