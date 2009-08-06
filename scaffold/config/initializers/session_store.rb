# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_scaffold_session',
  :secret      => '2603972874341953e1c73111ee7332d1c02226604ab5cfa3d3cede064156cd83320058323a1aa0a7141e2e1f4f3000cfa783f3bdddc6a492e56b442bd0f69fbe'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
