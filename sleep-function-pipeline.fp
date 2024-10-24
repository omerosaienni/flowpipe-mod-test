pipeline "sleep_function_pipeline" {
  param "event" {
    default = {
        "message": "Hello, world!"
    }
  }

  step "function" "sleep" {
      source    = "./example4/src"
      event     = param.event
      runtime = "nodejs:20"
  }
}