# production-vpc-with-autoscaling-and-alb

## 1. Introduction
This document provides an overview and details of the Terraform code used to create a production environment in AWS. The infrastructure is designed to host servers with high resiliency, deployed across two Availability Zones (AZs). Key components include a Virtual Private Cloud (VPC), private subnets, Application Load Balancer (ALB), Auto Scaling Group (ASG), and NAT Gateways.



![Image Alt Text](images/vpc-example-private-subnets.png)


## 2. Infrastructure Overview
The infrastructure consists of the following components:
- VPC: A custom VPC with user-defined CIDR block to isolate resources.
- Subnets: Two private subnets, each in a different AZ, for resiliency.
- Internet Gateway (IGW): Allows outbound internet access from instances.
- Route Table: Routes traffic to the IGW for outbound access.
- NAT Gateway: Provides internet access for instances in private subnets.
- Security Group: Allows inbound traffic on port 80 for web servers.
- ALB: Application Load Balancer to distribute traffic across instances.
- Target Group: Identifies instances for ALB to forward traffic to.
- Launch Configuration: Configures EC2 instance details for ASG.
- ASG: Auto Scaling Group to maintain desired capacity across AZs.

## 3. Terraform Code
The Terraform code is organized into separate files:
- `main.tf`: Contains the main resource definitions for the infrastructure components.
- `variables.tf`: Defines input variables for customization.
- `outputs.tf`: Defines output values to display after deployment.

## 4. Customization
The infrastructure can be customized by modifying the input variables in the `variables.tf` file. Users can specify AWS region, VPC CIDR block, private subnet CIDR blocks, instance type, AMI ID, desired capacity, and other parameters.

## 5. Execution
To deploy the infrastructure, run the following Terraform commands in the terminal:
1. `terraform init`: Initializes the Terraform configuration.
2. `terraform plan`: Generates an execution plan to review changes.
3. `terraform apply`: Applies the changes to create the infrastructure.

## 6. Tags
The infrastructure resources are tagged for better management and identification:
- VPC, Subnets, IGW, Route Table, and NAT Gateways have descriptive names.
- Security Group, ALB, Target Group, and ASG are tagged with their roles.

## 7. High Resiliency
The infrastructure achieves resiliency by deploying servers across two AZs. The ASG maintains the desired capacity, and the ALB distributes traffic evenly.

## 8. Security
Instances are placed in private subnets, isolated from the internet. Outbound internet access is provided through NAT Gateways, adding an extra layer of security.

## 9. Scalability
The ASG automatically scales the number of instances based on demand, ensuring optimal performance during peak times.

## 10. Conclusion
The Terraform code provided creates a resilient and secure infrastructure in AWS, suitable for hosting servers in a production environment. Users can customize the configuration to fit their specific needs and deploy with confidence using Terraform's infrastructure-as-code approach.
