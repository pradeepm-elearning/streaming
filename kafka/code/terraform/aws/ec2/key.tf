resource "tls_private_key" "tls_key_gen_kafka_test" {
    algorithm = "RSA"
    rsa_bits = 4096
}

resource "aws_key_pair" "ec2_key_pair_kafka_test" {
    key_name = "ec2-access-key-kafka"
    public_key = tls_private_key.tls_key_gen_kafka_test.public_key_openssh
}

resource "local_file" "pem_file_creation" {
    filename = "ec2_tf_test-kafka_test.pem"
    content = tls_private_key.tls_key_gen_kafka_test.private_key_pem
    file_permission = 0400
}