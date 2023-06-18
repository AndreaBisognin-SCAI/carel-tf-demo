locals {
    # Random suffix for resource names
    random_suffix = random_string.random_suffix.result
}

resource "random_string" "random_suffix" {
  length  = 8
  special = false
}

