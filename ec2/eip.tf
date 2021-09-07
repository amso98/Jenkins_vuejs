resource "aws_eip" "eip" {
  vpc      = true
  
  instance = aws_instance.web.id
}
