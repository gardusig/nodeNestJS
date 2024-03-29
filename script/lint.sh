cleanup_containers() {
    echo "start cleaning up containers..."
    docker-compose down
    echo "done cleaning up containers"
}

build_images() {
    echo "start building lint image..."
    docker-compose build -q lint
    echo "done building lint image"
}

run_lint() {
    echo "start running lint..."
    docker-compose run lint
    echo "done running lint"
}

main() {
    set -e
    cleanup_containers
    build_images
    run_lint
    cleanup_containers
}

main
