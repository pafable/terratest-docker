# Terratest-Docker
This project will deploy a docker container using the [Ghost](https://hub.docker.com/_/ghost/) container image and then verify it is running by attempting to connect to http:/localhost and retrieve an HTTP statuscode 200.

Prerequisites
- Docker 
- Go
- Terraform

Execute:
```
go test -v docker_test.go 
```

