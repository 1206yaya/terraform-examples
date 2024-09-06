# S3 Bucket Creation with Terraform

This project demonstrates how to create an AWS S3 bucket using Terraform. The bucket name is suffixed with a random ID to ensure uniqueness.

## Resources

- **AWS S3 Bucket**: An S3 bucket with a unique name.
- **Random ID**: A random 6-byte ID used as a suffix for the bucket name.

## Usage

1. Initialize the project:

   ```bash
   terraform init
   ```

2. Apply the configuration:

   ```bash
   terraform apply
   ```

   This will create an S3 bucket with a name like `example-bucket-<random_suffix>`.

3. View the output to get the bucket name:
   ```bash
   terraform output
   ```

## Requirements

- Terraform version `~> 1.7`
- AWS provider version `~> 5.0`
- Random provider version `~> 3.0`

## Providers

- `hashicorp/aws`
- `hashicorp/random`
