# require modules here
require "yaml"
emoticons = YAML.load_file('lib/emoticons.yml')

def load_library(emoticons)
  # code goes here
  emoticons.each do |name, symbols|
    emoticons_updated = {}
    name ||= {}
    emoticons_updated[name][:english] = symbols[0]
    emoticons_updated[name][:japanese] = symbols[2]
  end
  p emoticons_updated
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library(emoticons)
