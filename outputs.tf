output "arn" {
  description = "The arn of this lifecycle."
  value       = aws_dlm_lifecycle_policy.this.arn
}

output "id" {
  description = "The id of this lifecycle."
  value       = aws_dlm_lifecycle_policy.this.id
}

output "lifecycle" {
  description = "All about this lifecycle"
  value       = aws_dlm_lifecycle_policy.this
}