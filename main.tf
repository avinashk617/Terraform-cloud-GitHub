terraform {
    required_version = "~> 1.15.6" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.49.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-00e801948462f718a" 
	instance_type = "t2.micro"
tag = {
	name = "Avinash_Server"
	  }
}
