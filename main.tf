# Get the external data
data "external" "empty" {
  program = ["bash", "${path.module}/external_empty.sh"]
}

data "external" "non_empty" {
  program = ["bash", "${path.module}/external_non_empty.sh"]
}

# Debug output
output "empty" {
  value = ["${data.external.empty.result.value}"]
}

output "non_empty" {
  value = ["${data.external.non_empty.result.value}"]
}

# Create resources based on the external data
resource "null_resource" "empty" {
  count = "${data.external.empty.result["value"] != "" ? 1 : 0}"
}

resource "null_resource" "non_empty" {
  count = "${data.external.non_empty.result["value"] != "" ? 1 : 0}"
}
