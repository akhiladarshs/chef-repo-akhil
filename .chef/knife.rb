# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "akhiladarshs"
client_key               "#{current_dir}/akhiladarshs.pem"
chef_server_url          "https://api.chef.io/organizations/aas"
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright "Akhil, Inc."
cookbook_license "apachev2"
cookbook_email "akhiladarsh.s@gmail.com"
knife[:editor] ="/usr/bin/vim"
