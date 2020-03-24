#!/usr/bin/env ruby
require 'yaml'
require 'json'
require 'erb'

# conf
docs_src_path = 'src/docs/'
docs_path = 'docs/'
data_src_path = 'src/'
data_path = 'data/'
aragon_labels_file = data_path + 'aragon-labels.json'

# ---------------------------
puts "Generating DAO data files .."
dao = YAML.load(File.read('src/dao.yaml'))

# build DAO file
dao_file = data_path + 'dao.json'
File.open(dao_file, 'w') { |f| f.write(JSON.pretty_generate(dao)) }
puts "=> #{dao_file}"

# build member signatures
sigs_file = data_path + 'member-signatures.json'
sigs = []
dao['members'].each do |k, m|
  sigs << {
    :address => m['address'],
    :msg => "Jsem seznámen s pravidly Gwei.cz DAO, zavazuji se tyto pravidla respektovat a chci se stát členem, #{k}",
    :version => "2",
    :sig => m['sig']
  }
end
File.open(sigs_file, 'w') { |f| f.write(JSON.pretty_generate(sigs)) }
puts "=> #{sigs_file}"

# build aragon labels
aragon_labels = []
dao['aragon'].each { |k, m| aragon_labels << { :name => 'gweicz-' + k, :address => m['address'] } }
dao['members'].each { |k, m| aragon_labels << { :name => '@' + k, :address => m['address'] } }
File.open(aragon_labels_file, 'w') { |f| f.write(JSON.pretty_generate(aragon_labels)) }
puts "=> #{aragon_labels_file}"

# build docs
docs_files = Dir.entries(docs_src_path).select {|f| !File.directory? f}
puts "Generating docs .."
docs_files.each do |fn|
  tpl = ERB.new(File.read(docs_src_path + fn))
  File.open(docs_path + fn, 'w') { |f| f.write(tpl.result()) }
  puts "=> #{docs_path}#{fn}"
end

puts "Build done"
