# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
CRUDWithMysql::Application.config.secret_key_base = 'c40b2dfd7ac7cb73c22876c933323388d8c7e46fc3e33aac0e39480d7a017fc35448b23d3c67dad283da65d97ea1e82e631b86eece2c0fc8c67a768641b8994c'
