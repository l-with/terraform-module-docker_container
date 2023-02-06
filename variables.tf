variable "name" {
  description = "the name for the container"
  type        = string
}

variable "image" {
  description = "the image to run"
  type        = string
}

variable "publish" {
  description = "the port publishing specification"
  type        = string
}

variable "command" {
  description = "the command to be executed by the container"
  type        = string
}

variable "restart_policy" {
  description = "the restart policy (https://docs.docker.com/engine/reference/commandline/run/#restart)"
  type        = string
  default     = "no"
}