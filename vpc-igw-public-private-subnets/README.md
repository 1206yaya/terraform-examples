# VPC with Internet Gateway and Public/Private Subnets

## Overview

This directory contains a Terraform configuration that demonstrates how to create a Virtual Private Cloud (VPC) with both public and private subnets on AWS. Additionally, an Internet Gateway (IGW) and a public route table are configured to allow internet access for the public subnet.

## Architecture

The following AWS resources will be created:

1. **VPC**: A Virtual Private Cloud with a CIDR block of `10.0.0.0/16`.
2. **Public Subnet**: A public subnet with a CIDR block of `10.0.0.0/24`.
3. **Private Subnet**: A private subnet with a CIDR block of `10.0.1.0/24`.
4. **Internet Gateway (IGW)**: To enable internet access for the public subnet.
5. **Public Route Table**: Routes traffic from the public subnet to the Internet Gateway.

This setup is ideal for scenarios where public-facing resources, such as web servers, reside in the public subnet, and private resources, like databases, are secured within the private subnet.

## Prerequisites

Before you can deploy this infrastructure, ensure you have the following:

- **AWS Account**: You need valid AWS credentials with the necessary permissions to create VPCs, subnets, and other resources.
- **Terraform**: Install [Terraform](https://www.terraform.io/downloads.html) version `~> 5.0` or later.
- **AWS CLI**: Optional but recommended for setting up AWS credentials locally.

Configure AWS credentials using the AWS CLI if necessary:

```bash
aws configure
```

````

## Usage

### Step 1: Initialize the Terraform project

Navigate to this directory and run the following command to initialize Terraform. This will download the necessary providers.

```bash
terraform init
```

### Step 2: Review the configuration (optional)

The configuration defines the AWS region as `eu-west-1`. You can modify this setting in the `provider` block in `main.tf` to use a different region.

```hcl
provider "aws" {
  region = "eu-west-1"
}
```

### Step 3: Preview the infrastructure changes

Run the following command to preview the changes that will be applied to your AWS account:

```bash
terraform plan
```

### Step 4: Apply the configuration

To deploy the infrastructure, run:

```bash
terraform apply
```

Terraform will prompt you to confirm. Type `yes` to proceed. This will create the VPC, subnets, Internet Gateway, and other resources.

### Step 5: Cleanup (optional)

Once you no longer need the infrastructure, you can clean up all created resources by running:

```bash
terraform destroy
```

Terraform will again prompt you for confirmation. Type `yes` to proceed with the cleanup.


## Resources Created

The following AWS resources are created as part of this Terraform configuration:

- **VPC**: `10.0.0.0/16`
- **Public Subnet**: `10.0.0.0/24`
- **Private Subnet**: `10.0.1.0/24`
- **Internet Gateway (IGW)**: For public internet access.
- **Public Route Table**: Routes traffic from the public subnet to the IGW.

## Customization

To modify the VPC or subnet CIDR blocks, you can edit the corresponding values in the `main.tf` file. You can also adjust the region and resource tags as needed.

## Useful Links

- [Terraform AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [AWS VPC Documentation](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)

## License

This project is licensed under the MIT License. See the [LICENSE](../LICENSE) file in the root of this repository for details.

````
