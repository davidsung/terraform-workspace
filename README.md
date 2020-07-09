# Terraform Workspace Quick Introduction
This repository demonstrates how to use terraform `workspace` to switch between different environments

## Customize `dev.tfvars` and `staging.tfvars`
* Please supply your own IP address in the line `whitelist_ip = "W.X.Y.Z/C"`
* Please provide the path of your SSH Public Key in the line `ssh_public_key_path = "~/.ssh/id_rsa.pub"`

## Terraform Initialization
To initialize and download all the provider dependencies, run
```
$ terraform init
```

## Create Workspace for `dev`
To create a new workspace for storing environment specific `terraform.tfstate` file
```
$ terraform workspace new dev
```

This command will both create and switch to `dev` environment. 

## Plan and Apply
```
$ terraform plan -var-file=dev.tfvars
...
$ terraform apply -var-file=dev.tfvars
```

## Create Workspace for `staging`
Now create another workspace called `staging` by
```
$ terraform workspace new staging
```

Execute `plan` and `apply` again to create `staging` environment
```
$ terraform plan -var-file=staging.tfvars
...
$ terraform apply -var-file=staging.tfvars
```

## Access `dev` nginx server
Finally, you now have 2 separate environments in your infrastructure with the similar vpc, security groups and instance configuration.
```
$ terraform workspace select dev
...
$ curl $(terraform output web_endpoint)
```

## Access `staging` nginx server
```
$ terraform workspace select staging
...
$ curl $(terraform output web_endpoint)
```
