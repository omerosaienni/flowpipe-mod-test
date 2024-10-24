pipeline "sleep_function_pipeline" {
  param "event" {
    default = {
        "message": "Hello, world!"
    }
  }

  step "function" "sleep" {
      source  = "./src/sleep-function-pipeline"
      event     = param.event
      runtime = "nodejs:20"
  }

  output "testing" {
    value = step.function.sleep
  }
}