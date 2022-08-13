# resource "aws_instance" "web-server" {
#   ami           = "ami-0cea098ed2ac54925"
#   instance_type = "t2.micro"
#   associate_public_ip_address = true
#   # anytime you reference a resource, call type of the resource.name.id
#   vpc_security_group_ids = [aws_security_group.allow_tls22.id]
  
  


#   tags = {
#     Name = "HelloWorld"
#   }
# }
# resource "aws_lambda_function" "new_lambda" {

  
# }
resource "aws_instance" "web-server" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  # anytime you reference a resource, call type of the resource.name.id
  vpc_security_group_ids = [var.sg_id]
  
  


  tags = {
    Name = "HelloWorld"
  }
}
# resource "aws_lambda_function" "new_lambda" {
    
  
# }