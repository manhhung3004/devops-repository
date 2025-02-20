package org.test

import groovy.json.JsonOutput
import groovy.json.JsonSlurper

class JsonUtils {
    static Map parsed (String jsonfile) {
        if (!jsonfile || jsonfile.trim().isEmpty()) {
            println "ERROR: Content null at Json !"
            return [:]
        } else {
            def data = new JsonSlurper().parseText(jsonfile)
            return data
        }
    }
}