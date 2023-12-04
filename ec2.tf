# ec2_instance
resource "aws_instance" "default" {
  ami                  = var.ami
  instance_type        = var.instance_type
  iam_instance_profile = var.iam_instance_profile
  security_groups      = var.security_groups
  key_name             = var.key_name
  user_data            = var.user_data
  tags                 = var.ec2_tags
  #ebs_block_device {
  #  device_name = "/dev/xvda"
  #  volume_size = var.ebs_size
  #  volume_type = var.ebs_type
  #}
}

# ebs_volume
resource "aws_ebs_volume" "default" {
  availability_zone = var.availability_zone
  size              = var.ebs_size
  type              = var.ebs_type
  #encrypted         = true


  tags = var.ebs_tags
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = var.device_name
  volume_id   = aws_ebs_volume.default.id
  instance_id = aws_instance.default.id
}
