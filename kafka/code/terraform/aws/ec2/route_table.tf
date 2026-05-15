resource "aws_route_table" "rt_kafka_test" {
  vpc_id = aws_vpc.vpc_kafka_test.id
  tags = {
    Name = "rt | kafka_test"
  }
  route {
    cidr_block = aws_vpc.vpc_kafka_test.cidr_block
    gateway_id = "local"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig_kafka_test.id
  }
}