const String loginQuery = """
              query LoginUser(\$email: String, \$password: String) {
                loginUser(email: \$email, password: \$password) {
                  message
                }
              }
            """;