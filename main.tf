terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}
resource "local_file" "hello" {
  filename = "${path.module}/HelloWorld.py"
  content  = <<EOF
def printHelloWorld():
    print("${var.hello}")
EOF
}
