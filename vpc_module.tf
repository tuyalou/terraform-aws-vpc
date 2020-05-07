module "vpc" { 
    source = "./module" 
    region          =      "us-east-1"
    region_name     =      "virginia"
    vpc_cidr        =      "192.168.0.0/16"
    public1_cidr    =      "192.168.1.0/24"
    public2_cidr    =      "192.168.2.0/24"
    public3_cidr    =      "192.168.3.0/24"
    private1_cidr   =      "192.168.11.0/24"
    private2_cidr   =      "192.168.12.0/24"
    private3_cidr   =      "192.168.13.0/24"

    route_table_cidr =      "0.0.0.0/0"


    az1             =       "a"
    az2             =       "b"
    az3             =       "c"
    tags            = {
      Name        = "VPC_Task"
      Department  = "IT"
      Team        = "Infrastructure" 
      Environment = "Dev"
      Created_by  = "Tuba Loughlin"
    }
}
terraform {
  required_version = "0.11.14" 
  backend "s3" {
    bucket = "tuba-task"
    key    = "path/to/my/key"
    #dynamodb_table = 
    region = "us-east-1"
  }
}