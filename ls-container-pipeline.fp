pipeline "ls_container_pipeline" {
  step "container" "ubuntu" {
     image      = "ubuntu"
     cmd        = ["ls"]
  }  

  output "ls" {
    value = step.container.ubuntu.stdout
  }
}