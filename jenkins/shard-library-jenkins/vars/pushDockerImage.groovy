def call(String image_name, String image_version) {
    sh """
        docker image ls
        docker image push mahhhuhh/${image_name}:${image_version}
    """
}