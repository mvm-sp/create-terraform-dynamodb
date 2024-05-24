# create-terraform-dynamodb
Pipe to create dynamodb using Terraform

To use this repository, clone it to your PC

Then:
* Create terraform.tfvars file and Configure your credentials and region 
```terraform
#terraform.tfvars
region = "us-east-2"
access_key = "<YOUR AWS CONSOLE ACCESS ID>"
secret_key = "<YOUR AWS CONSOLE SECRET KEY>"
```
* Check the aws_db_instance parameters on main.tf file
* Run `terraform init` command
* Run `terraform plan` command
* Run `terraform apply` command

After all your tests you can run `terraform destroy` to clear this resource on your AWS account