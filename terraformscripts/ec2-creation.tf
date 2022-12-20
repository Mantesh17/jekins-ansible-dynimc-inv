provider "aws"{
   region  = "ap-south-1" 
}

resource "aws_instance" "AWSEC2Instance"{
     count   = 2
     ami = "ami-0cca134ec43cf708f"
     instance_type = "t2.micro"
     security_groups = ["launch-wizard-2"]
     key_name        = "mantesh"
     tags = {
        Name = "tomcatservers"
     }
}

