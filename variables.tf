variable "description" {
  description = "A description for the DLM lifecycle policy."
  type        = string
}

variable "execution_role_arn" {
  description = "The ARN of an IAM role that is able to be assumed by the DLM service."
  type        = string
}

variable "state" {
  description = "Whether the lifecycle policy should be enabled or disabled. ENABLED or DISABLED are valid values. Defaults to ENABLED."
  type        = string
  default     = "ENABLED"
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = null
}

variable "policy_details" {
  description = "Details of the policy."
  type = set(object(
    {
      resource_types = list(string)
      schedule = list(object(
        {
          copy_tags = bool
          create_rule = list(object(
            {
              interval      = number
              interval_unit = string
              times         = list(string)
            }
          ))
          name = string
          retain_rule = list(object(
            {
              count = number
            }
          ))
          tags_to_add = map(string)
        }
      ))
      target_tags = map(string)
    }
  ))
}