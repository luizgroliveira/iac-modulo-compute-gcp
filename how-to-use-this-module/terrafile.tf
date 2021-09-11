module "compute_gcp" {
  source         = "./.."
  project        = "seuprojeto"
  instance_name  = "nomedainstancia"
  instance_image = "debian-cloud/debian-10"
  machine_type   = "e2-small"
  zone           = "us-east1-d"
  network        = "default"

  metadata_startup_script = "echo 'Hello Mentoria' > /tmp/hello.txt"

  labels = {
    value = "key"
  }
}
