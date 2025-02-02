# require modules here
require "yaml"
file = './lib/emoticons.yml'
def load_library(file)
  # code goes here
  file_path = YAML.load_file(file)
  ymal_hash = Hash.new
  ymal_hash[:get_meaning] = Hash.new
  ymal_hash[:get_emoticon] = Hash.new
  
  file_path.each do |eng_meaning,jap_meaning|
    ymal_hash[:get_meaning][jap_meaning.last] = eng_meaning
    ymal_hash[:get_emoticon][jap_meaning.first] = jap_meaning.last
  end
  return ymal_hash
end

def get_japanese_emoticon(file,emoticon)
  ymal_hash = load_library(file)
  convert_emoticon = ymal_hash[:get_emoticon][emoticon]
  if convert_emoticon == nil
    convert_emoticon =  "Sorry, that emoticon was not found"
  end
  return convert_emoticon
end

def get_english_meaning(file,emoticon)
  ymal_hash = load_library(file)
  convert_emoticon = ymal_hash[:get_meaning][emoticon]
  if convert_emoticon == nil
    convert_emoticon =  "Sorry, that emoticon was not found"
  end
  return convert_emoticon
end