#Declaring AWS Provider and credentials
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWI7I4SH73B725QEW"
  secret_key = "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"
}
#######################################################
#Creating Production VPC with CIDR: 172.16.0.0/16
resource "aws_vpc" "vpc" {
    cidr_block = "172.16.0.0/16" 
    tags = {
        Name = "UAT VPC"
    }
}
output "vpcid" {
  value = aws_vpc.vpc.id
}
###########################################################