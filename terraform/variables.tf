locals {
  name               = "csgo server"
  user_data          = "user-data/dm.yml"
  instance_type      = "t2.micro"
  ami                = {
    "ap-east-1"      = "ami-5ad2972b"
    "ap-northeast-1" = "ami-07f4cb4629342979c"
    "ap-northeast-2" = "ami-0cd7b0de75f5a35d1"
    "ap-northeast-3" = "ami-0e2f764913dedaee9"
    "ap-south-1"     = "ami-0620d12a9cf777c87"
    "ap-southeast-1" = "ami-09a4a9ce71ff3f20b"
    "ap-southeast-2" = "ami-02a599eb01e3b3c5b"
    "ca-central-1"   = "ami-098dce2d49ef14294"
    "cn-north-1"     = "ami-01993b4213b4bffb5"
    "cn-northwest-1" = "ami-01d4e30d4d4952d0f"
    "eu-central-1"   = "ami-0b418580298265d5c"
    "eu-north-1"     = "ami-0b7937aeb16a7eb94"
    "eu-west-1"      = "ami-035966e8adab4aaad"
    "eu-west-2"      = "ami-006a0174c6c25ac06"
    "eu-west-3"      = "ami-096b8af6e7e8fb927"
    "me-south-1"     = "ami-02379a9b0bb140843"
    "sa-east-1"      = "ami-05494b93950efa2fd"
    "us-east-1"      = "ami-07ebfd5b3428b6f4d"
    "us-east-2"      = "ami-0fc20dd1da406780b"
    "us-west-1"      = "ami-03ba3948f6c37a4b0"
    "us-west-2"      = "ami-0d1cd67c26f5fca19"
  }
}

variable "secret_key" {}
variable "access_key" {}
variable "region" {
  default = "us-east-1"
}
