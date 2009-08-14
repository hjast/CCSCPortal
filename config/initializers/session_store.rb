# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ccscportal_session',
  :secret      => '02bc708f926c4b625b8f8bce3d6f40cab44087a68a2d5a0abadb488f60757c494802972a1a19256178666f50acc62888fa2a4b40fd0441a3680d9440b5d04ec7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
