template '/etc/login.defs' do
  source 'login.defs.erb'
  mode '0444'
  owner 'root'
  group 'root'

variables(
    additional_user_paths: node['akhil-oshard']['env']['extra_user_paths'].join(':'), # :/usr/local/games:/usr/games
    umask: node['akhil-oshard']['env']['umask'],
    password_max_age: node['akhil-oshard']['auth']['pw_max_age'],
    password_min_age: node['akhil-oshard']['auth']['pw_min_age'],
    password_warn_age: node['akhil-oshard']['auth']['pw_warn_age'],
    login_retries: node['akhil-oshard']['auth']['retries'],
    login_timeout: node['akhil-oshard']['auth']['timeout']
)
end
