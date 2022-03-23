terraform {
  required_providers {
    aws =  {
    source = "hashicorp/aws"
    version = ">= 2.7.0"
    }
  }
}

provider "aws" {
    region = "us-west-2"
}

resource "aws_s3_bucket" "terraform_backend_bucket" {
      bucket = "terraform-state-f4585ppc60sl34vaq6krx9c9cfuq6aelxe3c0ocs30xaw"
}

resource "aws_instance" "Instance-UtEe" {
      ami = data.aws_ami.ubuntu_latest.id
      instance_type = "t2.medium"
      lifecycle {
        ignore_changes = [ami]
      }
      subnet_id = aws_subnet.devxp_vpc_subnet_public0.id
      associate_public_ip_address = true
      vpc_security_group_ids = [aws_security_group.devxp_security_group.id]
      iam_instance_profile = aws_iam_instance_profile.Instance-UtEe_iam_role_instance_profile.name
}

resource "aws_eip" "Instance-UtEe_eip" {
      instance = aws_instance.Instance-UtEe.id
      vpc = true
}

resource "aws_iam_user" "Instance-UtEe_iam" {
      name = "Instance-UtEe_iam"
}

resource "aws_iam_user_policy_attachment" "Instance-UtEe_iam_policy_attachment0" {
      user = aws_iam_user.Instance-UtEe_iam.name
      policy_arn = aws_iam_policy.Instance-UtEe_iam_policy0.arn
}

resource "aws_iam_policy" "Instance-UtEe_iam_policy0" {
      name = "Instance-UtEe_iam_policy0"
      path = "/"
      policy = data.aws_iam_policy_document.Instance-UtEe_iam_policy_document.json
}

resource "aws_iam_access_key" "Instance-UtEe_iam_access_key" {
      user = aws_iam_user.Instance-UtEe_iam.name
}

resource "aws_s3_bucket" "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a" {
      bucket = "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a"
}

resource "aws_s3_bucket_public_access_block" "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a_access" {
      bucket = aws_s3_bucket.Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a.id
      block_public_acls = true
      block_public_policy = true
}

resource "aws_iam_user" "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a_iam" {
      name = "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a_iam"
}

resource "aws_iam_user_policy_attachment" "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a_iam_policy_attachment0" {
      user = aws_iam_user.Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a_iam.name
      policy_arn = aws_iam_policy.Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a_iam_policy0.arn
}

resource "aws_iam_policy" "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a_iam_policy0" {
      name = "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a_iam_policy0"
      path = "/"
      policy = data.aws_iam_policy_document.Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a_iam_policy_document.json
}

resource "aws_iam_access_key" "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a_iam_access_key" {
      user = aws_iam_user.Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a_iam.name
}

resource "aws_s3_bucket" "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b" {
      bucket = "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b"
}

resource "aws_s3_bucket_public_access_block" "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b_access" {
      bucket = aws_s3_bucket.Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b.id
      block_public_acls = true
      block_public_policy = true
}

resource "aws_iam_user" "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b_iam" {
      name = "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b_iam"
}

resource "aws_iam_user_policy_attachment" "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b_iam_policy_attachment0" {
      user = aws_iam_user.Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b_iam.name
      policy_arn = aws_iam_policy.Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b_iam_policy0.arn
}

resource "aws_iam_policy" "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b_iam_policy0" {
      name = "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b_iam_policy0"
      path = "/"
      policy = data.aws_iam_policy_document.Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b_iam_policy_document.json
}

resource "aws_iam_access_key" "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b_iam_access_key" {
      user = aws_iam_user.Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b_iam.name
}

resource "aws_dynamodb_table" "DynamoDb-xhOX" {
      name = "DynamoDb-xhOX"
      hash_key = "db"
      billing_mode = "PAY_PER_REQUEST"
      ttl {
        attribute_name = "TimeToExist"
        enabled = true
      }
      attribute {
        name = "db"
        type = "S"
      }
}

resource "aws_iam_user" "DynamoDb-xhOX_iam" {
      name = "DynamoDb-xhOX_iam"
}

resource "aws_iam_user_policy_attachment" "DynamoDb-xhOX_iam_policy_attachment0" {
      user = aws_iam_user.DynamoDb-xhOX_iam.name
      policy_arn = aws_iam_policy.DynamoDb-xhOX_iam_policy0.arn
}

resource "aws_iam_policy" "DynamoDb-xhOX_iam_policy0" {
      name = "DynamoDb-xhOX_iam_policy0"
      path = "/"
      policy = data.aws_iam_policy_document.DynamoDb-xhOX_iam_policy_document.json
}

resource "aws_iam_access_key" "DynamoDb-xhOX_iam_access_key" {
      user = aws_iam_user.DynamoDb-xhOX_iam.name
}

resource "aws_iam_instance_profile" "Instance-UtEe_iam_role_instance_profile" {
      name = "Instance-UtEe_iam_role_instance_profile"
      role = aws_iam_role.Instance-UtEe_iam_role.name
}

resource "aws_iam_role" "Instance-UtEe_iam_role" {
      name = "Instance-UtEe_iam_role"
      assume_role_policy = "{\n  \"Version\": \"2012-10-17\",\n  \"Statement\": [\n    {\n      \"Action\": \"sts:AssumeRole\",\n      \"Principal\": {\n        \"Service\": \"ec2.amazonaws.com\"\n      },\n      \"Effect\": \"Allow\",\n      \"Sid\": \"\"\n    }\n  ]\n}"
}

resource "aws_iam_role_policy_attachment" "Instance-UtEe_iam_role_Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a_iam_policy0_attachment" {
      policy_arn = aws_iam_policy.Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a_iam_policy0.arn
      role = aws_iam_role.Instance-UtEe_iam_role.name
}

resource "aws_iam_role_policy_attachment" "Instance-UtEe_iam_role_Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b_iam_policy0_attachment" {
      policy_arn = aws_iam_policy.Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b_iam_policy0.arn
      role = aws_iam_role.Instance-UtEe_iam_role.name
}

resource "aws_iam_role_policy_attachment" "Instance-UtEe_iam_role_DynamoDb-xhOX_iam_policy0_attachment" {
      policy_arn = aws_iam_policy.DynamoDb-xhOX_iam_policy0.arn
      role = aws_iam_role.Instance-UtEe_iam_role.name
}

resource "aws_subnet" "devxp_vpc_subnet_public0" {
      vpc_id = aws_vpc.devxp_vpc.id
      cidr_block = "10.0.0.0/25"
      map_public_ip_on_launch = true
      availability_zone = "us-west-2a"
}

resource "aws_subnet" "devxp_vpc_subnet_public1" {
      vpc_id = aws_vpc.devxp_vpc.id
      cidr_block = "10.0.128.0/25"
      map_public_ip_on_launch = true
      availability_zone = "us-west-2b"
}

resource "aws_internet_gateway" "devxp_vpc_internetgateway" {
      vpc_id = aws_vpc.devxp_vpc.id
}

resource "aws_route_table" "devxp_vpc_routetable_pub" {
      route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.devxp_vpc_internetgateway.id
      }
      vpc_id = aws_vpc.devxp_vpc.id
}

resource "aws_route" "devxp_vpc_internet_route" {
      route_table_id = aws_route_table.devxp_vpc_routetable_pub.id
      destination_cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.devxp_vpc_internetgateway.id
}

resource "aws_route_table_association" "devxp_vpc_subnet_public_assoc" {
      subnet_id = aws_subnet.devxp_vpc_subnet_public0.id
      route_table_id = aws_route_table.devxp_vpc_routetable_pub.id
}

resource "aws_vpc" "devxp_vpc" {
      cidr_block = "10.0.0.0/16"
      enable_dns_support = true
      enable_dns_hostnames = true
}

resource "aws_security_group" "devxp_security_group" {
      vpc_id = aws_vpc.devxp_vpc.id
      name = "devxp_security_group"
      ingress = []
      egress = []
}

data "aws_iam_policy_document" "Instance-UtEe_iam_policy_document" {
      statement {
        actions = ["ec2:RunInstances", "ec2:AssociateIamInstanceProfile", "ec2:ReplaceIamInstanceProfileAssociation"]
        effect = "Allow"
        resources = ["arn:aws:ec2:::*"]
      }
      statement {
        actions = ["iam:PassRole"]
        effect = "Allow"
        resources = [aws_instance.Instance-UtEe.arn]
      }
}

data "aws_ami" "ubuntu_latest" {
      most_recent = true
      owners = ["099720109477"]
      filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64*"]
      }
      filter {
        name = "virtualization-type"
        values = ["hvm"]
      }
}

data "aws_iam_policy_document" "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a_iam_policy_document" {
      statement {
        actions = ["s3:ListAllMyBuckets"]
        effect = "Allow"
        resources = ["arn:aws:s3:::*"]
      }
      statement {
        actions = ["s3:*"]
        effect = "Allow"
        resources = [aws_s3_bucket.Bucket-tsNH-fFyc-bWeK-dAaa-giiu-a.arn]
      }
}

data "aws_iam_policy_document" "Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b_iam_policy_document" {
      statement {
        actions = ["s3:ListAllMyBuckets"]
        effect = "Allow"
        resources = ["arn:aws:s3:::*"]
      }
      statement {
        actions = ["s3:*"]
        effect = "Allow"
        resources = [aws_s3_bucket.Bucket-tsNH-fFyc-bWeK-dAaa-giiu-b.arn]
      }
}

data "aws_iam_policy_document" "DynamoDb-xhOX_iam_policy_document" {
      statement {
        actions = ["dynamodb:DescribeTable", "dynamodb:Query", "dynamodb:Scan", "dynamodb:BatchGet*", "dynamodb:DescribeStream", "dynamodb:DescribeTable", "dynamodb:Get*", "dynamodb:Query", "dynamodb:Scan", "dynamodb:BatchWrite*", "dynamodb:CreateTable", "dynamodb:Delete*", "dynamodb:Update*", "dynamodb:PutItem"]
        effect = "Allow"
        resources = [aws_dynamodb_table.DynamoDb-xhOX.arn]
      }
      statement {
        actions = ["dynamodb:List*", "dynamodb:DescribeReservedCapacity*", "dynamodb:DescribeLimits", "dynamodb:DescribeTimeToLive"]
        effect = "Allow"
        resources = ["*"]
      }
}

