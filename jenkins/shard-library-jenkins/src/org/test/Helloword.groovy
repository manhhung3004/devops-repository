package org.test

import org.yaml.snakeyaml.Yaml

class Helloword {
    static Map parse(String yamlContent) {
        if (!yamlContent || yamlContent.trim().isEmpty()) {
            println "ERROR: Content null at YAML !"
            return [:]
        }

        println "DEBUG: Content of YAML raw: ${yamlContent}"

        def yaml = new Yaml()
        def parsedData = yaml.load(yamlContent)

        println "DEBUG: YAML parsed: ${parsedData}"

        return parsedData ?: [:]
    }
}
