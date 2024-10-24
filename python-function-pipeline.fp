pipeline "python-function-pipeline" {
  step "function" "python_function_pipeline" {
    source  = "./src/python-function-pipeline"
    runtime = "python:3.10"
    handler = "hello-world.print_hello_world"
  }

  output "testing" {
    value = step.function.python_function_pipeline
  }
}
