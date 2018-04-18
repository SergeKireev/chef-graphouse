props = File.read('graphouse-default.properties')

attributes = StringIO.new
template = StringIO.new

props.lines.each do |line|
  line = line.chomp
  next if line.empty? || !line.start_with?('graphouse')

  key, value = line.split('=')

  attribute_key = key.split('.').map { |k| "['#{k}']" }.join('')

  attributes.puts("default#{attribute_key.gsub("\['graphouse'\]", "['graphouse']['properties']")} = #{value}")

  template.puts("#{key}=<%= @properties#{attribute_key.gsub("\['graphouse'\]", '')} %>")
end

File.write('attributes', attributes.string)
File.write('template', template.string)
