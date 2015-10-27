%proxy% = SET http_proxy
docker-machine create --driver virtualbox --engine-env http_proxy=%proxy% --engine-env https_proxy=%proxy% --engine-env HTTP_PROXY=%proxy% --engine-env HTTPS_PROXY=%proxy% default

docker-machine env --shell cmd default > set_docker_env.cmd
call set_docker_env.cmd
del set_docker_env.cmd

docker run hello-world

