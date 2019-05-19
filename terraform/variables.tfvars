vpc_cidr = "10.0.0.0/16"
environment = "production"
public_subnet_cidrs = ["10.0.0.0/24", "10.0.1.0/24"]
private_subnet_cidrs = ["10.0.50.0/24", "10.0.51.0/24"]
availibility_zones = ["us-west-2a", "us-west-2b"]
region = "us-west-2"
ami_image = "ami-09568291a9d6c804c"
ecs_key = "whls-key-pair-uswest2"
instance_type = "t2.micro"
repo_owner = "whls"
repo_name = "whls_cicd_pipeline"
github_oauth_token = ""

