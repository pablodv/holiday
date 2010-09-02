# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_users_session',
  :secret      => '02d1f3d919beda360a9a7e58154e5914f1ab6305c2556ac72126a156d33cf10edfaa36b1e450d70e9e6a37755efae1ad78e518803bf3b2b0daf6a3465904838e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
