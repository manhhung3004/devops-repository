def call(String imageName, String imageVersion) {
    def trivyOutput = sh(script: "trivy image ${imageName}:${imageVersion}", returnStdout: true).trim()
    println trivyOutput

    if (trivyOutput.contains("Total: 0")) {
        echo "No vulnerabilities found in the Docker image."
    } else {
        echo "Vulnerabilities found in the Docker image."
        // You can take further actions here based on your requirements
        // For example, failing the build if vulnerabilities are found
        // error "Vulnerabilities found in the Docker image."
    }
}