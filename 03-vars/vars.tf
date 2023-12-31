
variable "sample" {
  default = 100
}

variable "sample1" {
  default = "Hello World"
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample1
}

## sometime if variable any reference with the combination of some other string then we have to access those in ${}
output "sample-ext" {
  value = "value of sample - ${var.sample}"
}

# plain
variable "course" {
  default = "DevOps Training"
}

# list
variable "courses" {
  default = [
  "DevOps",
  "AWS",
  "python"
  ]
}

# map
variable "course_details" {
  default = {
    DevOps = {
      name     = "DevOps"
      timing   = "10am"
      duration = "90"
    }
    aws = {
      name = "AWS"
      timing = "11am"
      duration = "30"
    }
  }
}

output "course" {
  value = var.course
}

output "courses" {
  value = var.courses[1]
}

output "course_details" {
  value = var.course_details["DevOps"]
}

variable "env" {}

output "env" {
  value = var.env
}

variable "url" {}
output "url" {
  value = var.url
}
