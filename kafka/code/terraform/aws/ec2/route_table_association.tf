resource "aws_route_table_association" "rta_kafka_test" {
  subnet_id = aws_subnet.subnet_kafka_test.id
  route_table_id = aws_route_table.rt_kafka_test.id
}