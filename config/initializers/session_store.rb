# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_moviehaiku_session',
  :secret      => 'ab8c70f87e838e8d0c9505dc7facf8e7459b0980ca7ca9599b98c91a5326dadf8cd84d68c712b4bb8c344e473ece10ee8b1451b138ec4d8ff54f1682472f4423'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
