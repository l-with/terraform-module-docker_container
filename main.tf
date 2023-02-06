locals {
  args = [
    "--detach",
    "--publish ${var.publish}",
    "--restart ${var.restart_policy}",
    "--name ${var.name}",
    "${var.image}",
    "${var.command}",
  ]
}

data "system_command" "docker_check_running" {
  command = "docker ps | rev | cut -d ' ' -f1 | rev | grep ${var.name} | cat"
  expect {
    stdout = true
  }
}

locals {
  name = base64decode(data.system_command.docker_check_running.stdout)
}

data "system_command" "docker_run" {
  command = "if [ ${local.name} = ${var.name} ]; then docker run ${join(" ", local.args)}; fi"
}