###

### Set user-data

edit [variables](variables.tf#L3) and change it to the file created previously.

### Run

```
export TF_VAR_secret_key=AWS_SECRET_KEY TF_VAR_access_key=AWS_ACCESS_KEY TF_VAR_region=us-east-1
terraform init
terraform apply
```
