pipeline{
    agent any
    stages{
        stage("Terraform Init"){
            steps{
                sh "terrafile -f env-${ENV}/Terrafile"
                sh "terraform init -backend-config=env-dev/dev-backend.tfvars"
            }

        }

        stage("Terraform Plan"){
            steps{
                sh "terraform plan -var-file=env-${ENV}/${ENV}.tfvars"
            }

        }
        stage("Terraform Apply"){
            steps{
                sh "terraform apply -auto-approve -var-file=env-${ENV}/${ENV}.tfvars"
            }

        }
    }
}