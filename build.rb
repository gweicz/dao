#!/usr/bin/env ruby
require 'yaml'
require 'json'
require 'erb'

# conf
docs_src_path = 'src/docs/'
docs_path = 'docs/'
aragon_labels_file = 'data/aragon-labels.json'

# ---------------------------

dao = YAML.load(File.read('src/dao.yaml'))

# build aragon labels
aragon_labels = []
dao['aragon'].each { |k, m| aragon_labels << { :name => 'gweicz-' + k, :address => m['address'] } }
dao['members'].each { |k, m| aragon_labels << { :name => '@' + k, :address => m['address'] } }
File.open(aragon_labels_file, 'w') { |f| f.write(JSON.pretty_generate(aragon_labels)) }
puts "Generated aragon labels: #{aragon_labels_file}"

# build docs
docs_files = Dir.entries(docs_src_path).select {|f| !File.directory? f}
puts "Generating docs .."
docs_files.each do |fn|
  tpl = ERB.new(File.read(docs_src_path + fn))
  File.open(docs_path + fn, 'w') { |f| f.write(tpl.result()) }
  puts "=> #{docs_path}#{fn}"
end

puts "Build done"
