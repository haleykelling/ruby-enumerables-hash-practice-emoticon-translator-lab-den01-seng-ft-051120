# require modules here
require "yaml"
emoticons = YAML.load_file('lib/emoticons.yml')

def load_library(emoticons)
  # code goes here
  emoticons.reduce({}) do |emoticons_updated, (name, symbols)|
    emoticons_updated[name] ||= {}
    emoticons_updated[name][:english] = symbols[0]
    emoticons_updated[name][:japanese] = symbols[1]
    emoticons_updated
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
