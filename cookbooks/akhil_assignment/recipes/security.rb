te '/etc/securetty' do
  source 'securetty.erb'
  mode '0400'
  owner 'root'
  group 'root'
  variables(
    ttys: node['akhil-oshard']['auth']['root_ttys'].join("\n")
  )
end
