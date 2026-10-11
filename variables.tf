variable "dataproc_metastore_table_iam_members" {
  description = <<EOT
Map of dataproc_metastore_table_iam_members, attributes below
Required:
    - database_id
    - member
    - role
    - service_id
    - table
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    database_id = string
    member      = string
    role        = string
    service_id  = string
    table       = string
    location    = optional(string)
    project     = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

