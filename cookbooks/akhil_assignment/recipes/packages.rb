#do package for config linux with packages
case node['Akhil_node']
when 'amazon-linux'
  include_recipe('akhil-oshard::yum')
end



