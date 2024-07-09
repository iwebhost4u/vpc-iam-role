# Terraform AWS VPC with Private Subnets and EC2 IAM Role

This repository contains Terraform code to create an AWS Virtual Private Cloud (VPC) with two private subnets and an IAM role for EC2 instances.

## Features

- Creates a VPC named `example-vpc`
- Creates two private subnets named `example-subnet`
- Creates an IAM role for EC2 instances

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine
- AWS credentials configured on your local machine

## Usage

1. **Clone the repository:**

    ```sh
    git clone https://github.com/your-username/your-repo-name.git
    cd your-repo-name
    ```

2. **Initialize the Terraform configuration:**

    ```sh
    terraform init
    ```

3. **Review the variables:**

    Update the `terraform.tfvars` file with your desired values.

    ```hcl
    vpc_cidr = "10.0.0.0/16"
    private_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
    region = "us-east-1"
    ```

4. **Apply the Terraform plan:**

    ```sh
    terraform apply
    ```

    Type `yes` to confirm the plan and create the resources.

## Variables

| Name                  | Description                                | Type   | Default       |
|-----------------------|--------------------------------------------|--------|---------------|
| vpc_cidr              | CIDR block for the VPC                     | string | `"10.0.0.0/16"` |
| private_subnet_cidrs  | List of CIDR blocks for private subnets    | list   | `["10.0.1.0/24", "10.0.2.0/24"]` |
| region                | AWS region                                 | string | `"us-east-1"`  |

## Outputs

| Name                  | Description                                  |
|-----------------------|----------------------------------------------|
| vpc_id                | ID of the created VPC                        |
| private_subnet_ids    | IDs of the created private subnets           |
| ec2_iam_role_arn      | ARN of the created EC2 IAM role              |

## File Structure

```sh
.
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
└── README.md

main.tf: Contains the main Terraform configuration for creating the VPC, subnets, and IAM role.
variables.tf: Contains the variable definitions.
outputs.tf: Contains the output definitions.
terraform.tfvars: Contains the variable values.
