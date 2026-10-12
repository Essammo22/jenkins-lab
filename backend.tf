# terraform {
#   backend "s3" {
#     bucket       = "nti-statefile-bucket"
#     key          = "terraform.tfstate"
#     use_lockfile = true
#     region       = "us-east-1"

#   }
# }