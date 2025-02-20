# Jenkins Shared Library

## Overview
This repository contains a shared library for **Jenkins** to standardize and streamline CI/CD pipelines for projects.

## Features
- Reusable pipeline functions
- Standardized build, test, and deployment steps
- Easy integration with Jenkins pipelines

## Structure
```
├── README.md
├── resources
│   ├── helloword.json
│   ├── helloword.yml
│   ├── org
│   │   ├── config
│   │   ├── scripts
│   │   │   └── test.sh
│   │   └── template
│   │       └── html.tpl
│   └── test.txt
├── src
│   ├── org
│   │   └── test
│   │       ├── Helloword.groovy
│   │       └── JsonUtils.groovy
│   └── test.txt
└── vars
    ├── buildDockerImage.groovy
    ├── deployDocker.groovy
    ├── pushDockerImage.groovy
    ├── sayHello.groovy
    └── scanDockerImages.groovy
```

## Getting Started

### 1. Load the Shared Library in Jenkins
Add the following in your **Jenkinsfile**:
```groovy
@Library('shared-library') _
```

### 2. Using Library Functions
Example usage of `buildDockerImage` and `deployDocker` functions:
```groovy
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    buildDockerImage()
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    deployDocker()
                }
            }
        }
    }
}
```

## Configuration
Ensure Jenkins is configured to use this shared library:
1. Go to **Manage Jenkins** > **Configure System**.
2. Under **Global Pipeline Libraries**, add:
   - Name: `shared-library`
   - Default version: `master` or specific branch
   - Load implicitly: ✅ (optional)
   - Allow default version to be overridden: ✅
   - Retrieval method: **Modern SCM** with Git repository URL

## Contributing
1. Fork the repository.
2. Create a new feature branch.
3. Commit and push changes.
4. Open a pull request for review.

## License
This project is licensed under the MIT License.

## Author
Your Name - [GitHub Profile](https://github.com/manhhung3004)