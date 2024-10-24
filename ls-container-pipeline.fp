pipeline "ls_container_pipeline" {
  step "container" "aws_s3_ls" {
     image      = "ubuntu"
     cmd        = ["ls"]
  }  

  output "buckets" {
    value = step.container.aws_s3_ls.stdout
  }
}