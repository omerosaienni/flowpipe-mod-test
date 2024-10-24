pipeline "example3" {
  step "function" "python_function_pipeline" {
    source  = "./example3/src"
    runtime = "python:3.10"
    handler = "hello-world.print_hello_world"
  }

  output "testing" {
    value = step.function.my_func_defaults
  }
}
