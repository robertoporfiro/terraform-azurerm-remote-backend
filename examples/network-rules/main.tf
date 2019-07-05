module "simple" {
    source = "../../"

    name = "simple"
    resource_group_name = "simple-rg"
    location = "westeurope"

    backends = ["dev"]
    
    network_rules = {
        bypass = ["None"],
        ip_rules = ["127.0.0.1"],
    }
}