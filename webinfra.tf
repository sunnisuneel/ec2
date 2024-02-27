resource "aws_instance" "webinfra" {
    associate_public_ip_address = true
    ami = "var.ami"
    instance_type = "t2.micro"
    key_name = "ansible"
    vpc_security_group_ids = [aws_security_group.websg.id]
    subnet_id = aws_subnet.subnets.id
    tags = {
        "Name" = "web"
    }
    depends_on = [ 
        aws_security_group.websg,
        aws_vpc.myvpc
     ]
    
    }
  
