# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "ambefrank"
    key            = "rentzone-app/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "new-terraform-cicd-state-LOCK"
  }
}
