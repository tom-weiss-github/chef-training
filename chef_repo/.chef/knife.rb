current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "tom__weiss"
client_key               "#{current_dir}/tom__weiss.pem"
validation_client_name   "tom__weiss__training-validator"
validation_key           "#{current_dir}/tom__weiss__training-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/tom__weiss__training"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
