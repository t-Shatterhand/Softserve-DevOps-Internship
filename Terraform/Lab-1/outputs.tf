output "ec2_public_ip" {
    value = aws_instance.server.public_ip
}
output "ec2_ami" {
    value = aws_instance.server.ami
}
output "ec2_type" {
    value = aws_instance.server.instance_type
}
output "public_vpc_id" {
    value = aws_vpc.main.id
}
output "ec2_subnet_id" {
    value = aws_subnet.subnet.id
}
output "public_subnet_AZ" {
    value = aws_subnet.subnet.availability_zone
}
output "ec2_region" {
    value = data.aws_region.current.name
}
 