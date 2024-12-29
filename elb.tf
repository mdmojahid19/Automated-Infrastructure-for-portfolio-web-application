resource "aws_elb" "web_elb" {
  name               = "web-load-balancer"
  availability_zones = ["ap-south-1a"]
  security_groups    = [aws_security_group.ec2_security_group.id]

  listener {
    instance_port     = 80
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  }

  health_check {
    target              = "HTTP:80/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }

  instances = [aws_instance.s11.id]

  tags = {
    Name = "Web-ELB"
  }
}

