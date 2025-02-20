def call(String image_name, String image_version, String pathDockerfile) {
    sh """
        ls -la
        docker build -t ${image_name} -f ${pathDockerfile} .
        docker tag ${image_name} mahhhuhh/${image_name}:${image_version}
    """
}