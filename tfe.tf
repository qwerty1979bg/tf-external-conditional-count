# Install jq in the TFE worker
resource "null_resource" "jq" {
provisioner "local-exec" {
    command = <<EOH
sudo apt-get update
sudo apt-get install -y jq
EOH
  }
}
