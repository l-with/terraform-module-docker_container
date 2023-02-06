locals {
  args = [
    "--publish ${var.publish}",
    "--restart ${var.restart_policy}",
    "--name ${var.name}",
    "${var.image}",
    "${var.command}",
  ]
}

data "system_command" "docker_run" {
  command = "docker run ${join(" ", local.args)}"
}