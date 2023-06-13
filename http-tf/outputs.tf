output "poke-name" {
  description = "API that documents folks in space"
  value       = data.http.iss.response_body
}

# produces legal JSON output value named "space_heroes_json"
output "poke-name_json" {
  description = "API that documents folks in space"
  value       = jsondecode(data.http.iss.response_body)    // note the jsondecode()
}  
