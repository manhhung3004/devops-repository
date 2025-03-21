def call(dockerTag, version) {
    withDockerRegistry(credentialsId: 'dockerhub', url: 'https://index.docker.io/v1/') {
        sh """
            DOCKERHUB_USER=${DOCKER_REGISTRY_USERNAME} \\
            DOCKERHUB_PASSWORD=${DOCKER_REGISTRY_PASSWORD} \\
            bash ./bin/deploy-backend.sh \\
                -t ${dockerTag} \\
                -v ${version}
        """
    }
}
