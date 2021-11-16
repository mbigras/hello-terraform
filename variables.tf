variable "greeting" {
  type        = string
  description = "Greeting applies to target."
  default     = "hello"
}

variable "target" {
  type        = string
  description = "Target receives the greeting."
  default     = "world"
}
