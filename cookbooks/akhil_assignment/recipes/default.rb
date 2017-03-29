#
# Cookbook:: akhil_assignment
# Recipe:: default
# show the apt-get
# Copyright:: 2017, Akhil, Inc.,  All Rights Reserved.
include_recipe('akhil-oshard::packages')
include_recipe('akhil-oshard::login_defs')
include_recipe('akhil-oshard::security')

