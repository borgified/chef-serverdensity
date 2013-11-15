#
# Cookbook Name:: serverdensity
# Resource:: default
#

actions :configure
default_action :configure

# server name
attribute :name,
  :kind_of => String,
  :name_attribute => true,
  :required => true

# optional agent_key
attribute :agent_key,
  :kind_of => [String, FalseClass],
  :regex => /^\w{32}$/,
  :default => node.serverdensity.agent_key

# apiv2 token
attribute :token,
  :kind_of => String,
  :default => node.serverdensity.token

# apiv1 credentials
attribute :account,
  :kind_of => String,
  :default => node.serverdensity.sd_url.sub(/^https?:\/\//, "")
attribute :username,
  :kind_of => String,
  :default => node.serverdensity.username
attribute :password,
  :kind_of => String,
  :default => node.serverdensity.password

# server filter
attribute :filter,
  :kind_of => Hash,
  :default => {:hostname => node.hostname}

# server metadata
attribute :metadata,
  :kind_of => Hash,
  :default => {}
