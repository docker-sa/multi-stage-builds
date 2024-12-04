group "default" {
  targets = ["golang", "ubuntu", "scratch"]
}

target "golang" {
  dockerfile = "Dockerfile.00.golang"
  tags = ["hello-go:00.golang"]
}

target "ubuntu" {
  dockerfile = "Dockerfile.01.ubuntu"
  tags = ["hello-go:01.ubuntu"]
}

target "scratch" {
  dockerfile = "Dockerfile.02.scratch"
  tags = ["hello-go:02.scratch"]
}

# docker buildx bake
