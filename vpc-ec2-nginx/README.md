# Terraform VPC & EC2 Setup

This Terraform configuration sets up a basic AWS environment with the following components:

- A VPC with a public subnet
- An Internet Gateway for public internet access
- An EC2 instance with security group rules for HTTP (port 80) and HTTPS (port 443) traffic

## Prerequisites

- Terraform version `~> 1.7`
- AWS provider version `~> 5.0`
- AWS CLI configured with appropriate credentials

## Resources Created

- **VPC**: A Virtual Private Cloud (VPC) with a CIDR block of `10.0.0.0/16`.
- **Subnet**: A public subnet with a CIDR block of `10.0.0.0/24`.
- **Internet Gateway**: Attached to the VPC to allow internet access.
- **Route Table**: Public route table associating the subnet with the Internet Gateway.
- **Security Group**: Allows inbound HTTP (port 80) and HTTPS (port 443) traffic.
- **EC2 Instance**: A `t2.micro` instance using the specified AMI (`ami-041290b7cc4be2d3c`), deployed in the public subnet.

## Usage

1. Initialize Terraform:
   ```bash
   terraform init
   ```
2. Apply the configuration:
   ```bash
   terraform apply
   ```

## Tags

All resources include common tags:

- `ManagedBy: Terraform`
- `Project: tf-tutorial`
- `CostCenter: 1234`
