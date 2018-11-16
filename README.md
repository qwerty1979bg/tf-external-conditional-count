# A Terraform example using external data and ternary conditional to populate count value

This repository contains an example code that gets data from external source (bash script) and uses a ternary contitional to populate the count value for a resource

## Usage

1. [Install Terraform](https://www.terraform.io/intro/getting-started/install.html)
2. Clone this repository and `cd` into it.

3. Run the following:

```
$ terraform init
$ terraform plan
$ terraform apply
$ terraform destroy
```

Note:

When the external data provider returns NULL, the resource does not get created because "count=0" 
