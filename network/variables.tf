variable cidr {
  type = string
  #default = "10.5.0.0/16"
   #description = "this is cidr blck"
}

variable sub_public_cidr_list {
  type = list(any)
}

variable sub_private_cidr_list{
  type = list(any)
}

variable availability_zones {
  type = list(any)
}