#
# Cookbook Name:: users
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

decrypted = Chef::EncryptedDataBagItem.load("passwords", "userlist")

search(:users, "*:*").each do |user_data|
    user user_data['id'] do
        comment user_data['comment']
        uid user_data['uid']
        gid user_data['gid']
        home user_data['home']
        shell user_data['shell']
        password decrypted[user_data['id']]
    end
end

# Useful to inject a recipe to execute in the middle of
# another recipe.  If not in the same cookbook, use
# the depend command to ensure that cookbook is loaded.
include_recipe "users::groups"

