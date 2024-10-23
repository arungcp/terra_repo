resource "google_storage_bucket" "auto-expire" {
  name          = "auto-expiring-bucket"
  project       = "gcp-demo-416310"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}