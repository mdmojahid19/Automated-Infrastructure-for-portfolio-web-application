# Automated-Infrastructure-for-portfolio-web-application

This project automates the deployment of infrastructure for a simple portfolio web application using Terraform on AWS. The setup includes a VPC, subnets, an EC2 instance, an ELB, and an S3 bucket for storage. This document provides step-by-step instructions and an architecture flow chart.

## Project Structure

```plaintext
terraform-portfolio-web-app/
provider.tf        # Provider configuration for AWS
network.tf         # VPC, Subnet, and Internet Gateway setup
ec2.tf             # EC2 instance configuration
elb.tf             # Elastic Load Balancer setup
s3.tf              # S3 bucket setup
variables.tf       # Variables used in the Terraform scripts
outputs.tf         # Outputs to display resources created
.gitignore         # Files to ignore in the Git repository
```

---

## Architecture Flow Chart

![Infrastructure Architecture](architecture_diagram.png)

The architecture includes the following components:
- **AWS VPC:** Provides a private network for the application.
- **Subnets:** One public and one private subnet.
- **Internet Gateway:** Allows internet access to the public subnet.
- **Route Tables:** Defines routes for public and private subnets.
- **EC2 Instance:** Hosts the web application.
- **Elastic Load Balancer:** Balances traffic across instances.
- **S3 Bucket:** Stores application files or logs.

---

## Prerequisites

- AWS account
- Terraform installed on your local machine
- AWS CLI configured with access and secret keys

---

## Steps to Deploy the Infrastructure

### Step 1: Clone the Repository
Clone this project to your local machine:
```bash
git clone https://github.com/mdmojahid19/Automated-Infrastructure-for-portfolio-web-application.git
cd terraform-web-app
```

### Step 2: Configure Variables
Edit the `variables.tf` file to customize the setup (e.g., region, CIDR blocks, instance type, etc.).

### Step 3: Initialize Terraform
Initialize Terraform to download required providers and set up the environment:
```bash
terraform init
```

### Step 4: Plan the Infrastructure
Generate an execution plan to review resources that Terraform will create:
```bash
terraform plan
```

### Step 5: Apply the Configuration
Deploy the infrastructure:
```bash
terraform apply
```
Approve the plan when prompted.

### Step 6: Access the Application
Once the deployment is complete, retrieve the public IP of the load balancer or EC2 instance from the Terraform outputs. Use it to access the web application in your browser.

---

## Components in Detail

### Provider Configuration (`provider.tf`)
Defines the AWS provider and credentials.

### Network Setup (`network.tf`)
- Creates a VPC with a CIDR block.
- Sets up public and private subnets.
- Configures an Internet Gateway and a public route table.

### EC2 Instance (`ec2.tf`)
- Launches an EC2 instance in the public subnet.
- Configures a security group for HTTP and SSH access.
- Sets up a simple web server using a user-data script.

### Elastic Load Balancer (`elb.tf`)
- Configures an application load balancer.
- Integrates with the EC2 instance to distribute traffic.

### S3 Bucket (`s3.tf`)
- Creates an S3 bucket for file storage.
- Enables versioning for the bucket.

### Outputs (`outputs.tf`)
Displays the IDs and endpoints of the created resources.

---

## Cleaning Up
To destroy the infrastructure and avoid charges:
```bash
terraform destroy
```

---

## Architecture Flow Chart

The architecture is visually represented below:

```plaintext

```

The flow chart image (`architecture_diagram.png`) includes the logos of AWS, VPC, EC2, ELB, and S3.

---

## License
This project is licensed under the MIT License.

---

## Contributions
Contributions are welcome! Feel free to submit pull requests or raise issues.


