output "kafka-output" {
  value = aws_instance.ec2_kafka_test.public_ip
  description = "Public IP for the AWS"
}