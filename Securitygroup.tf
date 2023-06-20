# Create Security Group for EC2 instance
# terraform aws create security group
resource "aws_security_group" "ec2-security-group" {
    name        = "SSH Security Group"
    description = "Enable SSH access on Port 22"
    vpc_id      = aws_vpc.vpc.id
    ingress {
        description      = "SSH Access"
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    tags   = {
        Name = "EC2 Security Group"
    }
}