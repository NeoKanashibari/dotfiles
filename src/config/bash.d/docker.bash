dk-nuke() {
    docker system prune --force -a --volumes
}

dk-cleanup() {
    docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
    docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}

dk-down() {
    docker-compose down
}

dk-up() {
    docker-compose up
}
