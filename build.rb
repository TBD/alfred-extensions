Dir['*'].each do |dir|
  next if dir == '_downloads'
  next if not File.directory?(dir)
  `zip -vr "#{dir}.zip" "#{dir}" -x "*.DS_Store"`
  `mv "#{dir}.zip" ./_downloads/"#{dir}.alfredextension"`
  puts "#{dir}.alfredextension created" 
end