variable "environment" {
    default = "dev"
}
variable "product" {
    default = "amazon"
}
variable "ec2_count" {
    type = number
    default = "2"
}
variable "subnets" {
    type = list
    default = ["subnet-0a97bed60f00da0be","subnet-0e7dbe87340e1a0e9","subnet-0a7ec212d239e8730","subnet-029cf17dd19cb8fa1","subnet-09512b184b170b47c","subnet-09512b184b170b47c"]
  
}
