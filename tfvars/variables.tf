variable "instance_names" {
    type = map
    # default = {
    #     db = "t3.small"
    #     backend = "t3.micro"
    #     frontend = "t3.micro"
    # }
}

variable "environment"{
   # default = "dev"
}
variable "common_tags" {
    type = map
    default = {
        Project = "Expense"
        terraform = "True"
    }
}

variable "domain_name" {
    default = "devopshub.shop"
  
}

variable "zone_id" {
    default = "Z0938101182GWX7E2WWZX"
  
}