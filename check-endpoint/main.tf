terraform {
    required_providers {
        http = {
            source = "hashicorp/http"
        }
    }
}

provider "http" {
}

data "http" "example" {
    url = "http://127.0.0.1:2224/spock"
}

output "response" {
    value = data.http.example.response_body
}
