resource "aws_lb" "web-server_lb" {
  name               = "web-server-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.lb_sg.id] #Associate the security group from lb/sg with this load balancer
  subnets            = [var.public_subnet_id_1, var.public_subnet_id_2]

  tags = {
    Name = "web-server-lb"
  }
}

resource "aws_lb_target_group" "web-server_tg" {
  name     = "web-server-tg-1"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

resource "aws_lb_listener" "web-server_lb_listener" {
  load_balancer_arn = aws_lb.web-server_lb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web-server_tg.arn
  }
}

resource "aws_lb_target_group_attachment" "web-server_tg_attachment" {
  target_group_arn = aws_lb_target_group.web-server_tg.arn
  target_id        = var.web_server_id
  port             = 80
}
