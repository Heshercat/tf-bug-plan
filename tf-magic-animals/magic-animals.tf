resource "null_resource" "initial" {
  provisioner "local-exec" {
    command = "echo 'Hello, magic animals!'"
  }
}

resource "null_resource" "timestamp-trigger" {
  triggers = {
    value = timestamp()
  }

  provisioner "local-exec" {
    command = "echo Resource updated at: ${self.triggers.value}"
  }
}
#
#resource "local_file" "foo" {
#  content  = "smth!"
#  filename = "${path.module}/smth.bar"
#}
