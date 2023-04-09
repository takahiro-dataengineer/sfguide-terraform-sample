terraform {
    required_providers {
        snowflake = {
            source = "Snowflake-Labs/snowflake"
            version = "~> 0.35"
        }
    }
}

provider = "snowflake" {
    role = "SYSADMIN"
}

resource "snowflake_database" "db" {
    name = "TF_DEMO"
}

resource "snowflake_Warehouse" "warehouse" `{
    name = "TF_DEMO"
    warehouse_size = "large"

    auto_suspend = 60
}