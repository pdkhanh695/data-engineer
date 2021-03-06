# --- kinesis-stream/main.tf ---

resource "aws_kinesis_stream" "kinesis_stream" {
  name             = var.kinesis_stream_name
  shard_count      = var.shard_count
  retention_period = var.retention_period

  shard_level_metrics = var.shard_level_metrics

  tags = {
    Environment = var.kinesis_stream_name
  }
}