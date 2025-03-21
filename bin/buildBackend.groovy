def call(dockerfileName, dockerTag, dockerfileDir, version) {
    sh """
        bash ./bin/build-backend.sh \\
            -f ${dockerfileName} \\
            -t ${dockerTag} \\
            -d ${dockerfileDir} \\
            -v ${version}
    """
}
