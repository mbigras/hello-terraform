# Hello Terraform

> Hello-terraform is a Terraform module that illustrates basic input and output.

## Summary

Hello-terraform illustrates a Terraform module through examples that you run on the command-line. This module doesn't create any resources. It only takes string inputs and returns a string output.

## Quickstart

The purpose of hello-terraform is to get up and running as quick as possible without getting bogged down in details. You apply a Terraform plan that passes one input to the [mbigras/hello-terraform](https://github.com/mbigras/hello-terraform) Terraform module, then you observe the output printed to your screen.

1. Install dependencies.

   [Terraform](https://www.terraform.io/downloads.html) is the only dependency.

1. Get the code.

   ```
   git clone git@github.com:mbigras/hello-terraform.git
   cd hello-terraform
   ```


1. Navigate to the second example directory.

   ```
   cd examples/02-passing-input
   ```

   > :blue_book: **Note:** This example passes the `target` argument to the [mbigras/hello-terraform](https://github.com/mbigras/hello-terraform) child module. Refer to [examples/01-default-inputs](https://github.com/mbigras/hello-terraform/tree/master/examples/01-default-inputs) for an example that doesn't pass any input, and therefore, only uses the child module's default input variables.

1. Download the [mbigras/hello-terraform](https://github.com/mbigras/hello-terraform) Terraform module.

   ```
   terraform init
   ```

   The output should look like this:

   ```
   $ terraform init
   Initializing modules...
   Downloading git@github.com:mbigras/hello-terraform.git?ref=0.1.0 for hello_world...
   # ...
   Terraform has been successfully initialized!
   # ...
   ```

1. Create a Terraform plan.

   ```
   terraform plan -out current.plan
   ```

   There isn't much to review in this plan because [mbigras/hello-terraform](https://github.com/mbigras/hello-terraform) doesn't create any resources. However, you can see a change to the Terraform outputs:

   ```
   $ terraform plan -out current.plan
   
   Changes to Outputs:
     + salutation = "hello quickstart"
   # ...
   ```

1. Apply the plan.

   ```
   terraform apply current.plan
   ```

   The output should look like this:

   ```
   $ terraform apply current.plan
   
   Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
   
   Outputs:
   
   salutation = "hello quickstart"
   ```

   Notice the quickstart string in the salutation output. That's because this Terraform code passes "quickstart" as input to the [mbigras/hello-terraform](https://github.com/mbigras/hello-terraform) child module. Then, the child module does some work and returns "hello quickstart" as output. Finally, this Terraform code forwards the output to your screen.

1. Clean up.

   ```
   terraform plan -out current.plan -destroy
   terraform apply current.plan
   rm -rf terraform.tfstate* current.plan .terraform/
   ```

   > :construction: **Caution:** This example doesn't create any resources and you remove files to return your laptop to a clean state. In practice, you would carefully review the plan to destroy resources and avoid storing Terraform state on your laptop.
