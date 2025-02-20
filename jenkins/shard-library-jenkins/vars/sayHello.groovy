import org.test.Helloword
import org.test.JsonUtils
def call() {
    try {

        String yamlfile = 'helloword.yml'
        String jsonfile = 'helloword.json'
        def yamlContent = libraryResource(yamlfile)

        // echo "DEBUG: content YAML raw: ${yamlContent}"

        def config = Helloword.parse(yamlContent)

        echo "User Name: ${config.nameUser ?: 'no data'}"
        echo "Phone Number: ${config.phone ?: 'no data'}"

        testJson(jsonfile)
    } catch (Exception e) {
        echo "ERROR: can't read YAML: ${e.message}"
    }
}


void testJson (String file) {
  try {

    def fileJson = libraryResource(file)

    def config = JsonUtils.parsed(fileJson)

    echo "JSON User id : ${config.user?.id ?: 'no data'}"
    echo "JSON User name : ${config.user?.name ?: 'no data'}"
    echo "JSON User email : ${config.user?.email ?: 'no data'}"
    echo "JSON Order id : ${config.order?.id ?: 'no data'}\""
    echo "JSON Order status : ${config.order?.status ?: 'no data'}"

    if (config.order?.items) {
      config.order.items.eachWithIndex { item, index ->
        echo "JSON Order item ${index + 1} name: ${item.name}, price: ${item.price}"
      }
    } else {
        echo "No order items found."
    }

  } catch (Exception e) {
    echo "ERROR: can't read JSON: ${e.message}"
  }
}