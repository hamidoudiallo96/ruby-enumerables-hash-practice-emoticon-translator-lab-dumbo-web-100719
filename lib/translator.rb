# require modules here
require "yaml"

def load_library(file)
  # code goes here
  file_path = YAML.load_file('./lib/emoticons.yml')
  ymal_hash = Hash.new
  ymal_hash[:get_meaning] = Hash.new
  ymal_hash[:get_emoticon] = Hash.new
  
  file_path.each do |eng_meaning,jap_meaning|
    # ymal_hash[:get_meaning]= jap_meaning
    # ymal_hash[:get_emoticon]= eng_meaning
    p eng_meaning
    p jap_meaning
    
  end
  return ymal_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end