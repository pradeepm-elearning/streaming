resource "aws_internet_gateway" "ig_kafka_test" {
  vpc_id   = aws_vpc.vpc_kafka_test.id
  tags = {
    Name = "ig | Kafka Test"
  }
}