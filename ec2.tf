resource "aws_instance" "web_server" {
    ami = "ami-04902260ca3d33422"
    instance_type = "t2.micro" 
    count = 2
}