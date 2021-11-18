# GCP VMs

This module is designed for provisioning from 0 to n VMs. Please review `terraform.tfvars.example` for better understanding.

## Deployment
* Clone the repo - `git clone git@github.com:andybondar/ansible-lab__terraform.git`
* Change directory to `ansible-lab__terraform/modules/compute/vm/`
* Create `terraform.tfvars` file and populate it with the required parameter using `terraform.tfvars.example` as an example
* Use `gcloud auth application-default login --no-launch-browser` to autheticate against GCP
* Run the following:

```
terraform init
terraform plan
terraform apply
```

When you don't need the VMs anymore, run:
```
terraform destroy
```