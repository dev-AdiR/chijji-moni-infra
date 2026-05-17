# Chijji Moni Infra

Infrastructure and deployment configuration for the Chijji Moni application.

This repository contains the infrastructure-as-code setup, Kubernetes manifests, CI/CD workflows, and deployment automation required to provision and run the Chijji Moni platform.

## Tech Stack

* **Terraform** — Infrastructure provisioning
* **Kubernetes** — Container orchestration
* **GitHub Actions** — CI/CD automation
* **Makefile** — Developer workflows and automation

---

## Repository Structure

```bash
.
├── .github/
│   └── workflows/        # GitHub Actions CI/CD workflows
├── terraform/            # Terraform infrastructure definitions
├── deployment.yaml       # Kubernetes deployment manifest
├── service.yaml          # Kubernetes service manifest
├── Makefile              # Common automation commands
└── .gitignore
```

---

## Prerequisites

Before getting started, ensure you have the following installed:

* Terraform
* kubectl
* Docker
* Make
* Access to your Kubernetes cluster
* Cloud provider credentials (if applicable)

---

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/dev-AdiR/chijji-moni-infra.git
cd chijji-moni-infra
```

### 2. Initialize Terraform

```bash
cd terraform
terraform init
```

### 3. Review the Terraform plan

```bash
terraform plan
```

### 4. Apply infrastructure

```bash
terraform apply
```

---

## Kubernetes Deployment

Deploy the application resources to your Kubernetes cluster:

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

Verify resources:

```bash
kubectl get pods
kubectl get services
```

---

## Makefile Commands

Run available commands:

```bash
make help
```

Common examples:

```bash
make deploy
make destroy
make lint
```

> Update the Makefile targets section once additional commands are finalized.

---

## CI/CD

GitHub Actions workflows are located in:

```bash
.github/workflows
```

These workflows can be used for:

* Terraform validation
* Infrastructure deployment
* Kubernetes rollout automation
* Linting and formatting checks

---

## Environment Variables

Create and configure the required environment variables or secrets for:

* Cloud provider authentication
* Kubernetes cluster access
* Terraform backend configuration
* Application-specific secrets

Example:

```bash
export AWS_ACCESS_KEY_ID=<your-access-key>
export AWS_SECRET_ACCESS_KEY=<your-secret-key>
```

---

## Future Improvements

* Add Helm chart support
* Add Terraform remote state backend
* Add monitoring and observability
* Add staging and production environments
* Add automated rollback strategy

---

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Open a pull request

---

## License

This project is licensed under the MIT License.

---

## Author

Built by [dev-AdiR](https://github.com/dev-AdiR?utm_source=chatgpt.com)
