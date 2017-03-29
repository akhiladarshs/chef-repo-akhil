ruby_block 'check signature in repo' do
  block do
    config_file = '/etc/yum.conf'
    GPGCheck.check(config_file)

    Dir.glob('/etc/yum.repos.d/*').each do |file|
      GPGCheck.check(file)
    end

    rhn_conf = '/etc/yum/pluginconf.d/rhnplugin.conf'
    File.file?(rhn_conf) do
      GPGCheck.check(rhn_conf)
    end
  end
  action :run
end
