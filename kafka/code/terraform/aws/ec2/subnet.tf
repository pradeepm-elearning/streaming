resource "aws_subnet" "subnet_kafka_test" {
  vpc_id     = aws_vpc.vpc_kafka_test.id
  cidr_block = aws_vpc.vpc_kafka_test.cidr_block
  tags = {
    Name = "subnet | kafka test"
  }
}