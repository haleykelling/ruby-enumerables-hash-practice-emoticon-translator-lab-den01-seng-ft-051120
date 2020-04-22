# require modules here
require "yaml"
emoticons = YAML.load_file('lib/emoticons.yml')

def load_library(emoticons)
  # code goes here
  emoticons.reduce({}) do |emoticons, (name, symbols)|
    emoticons[name] ||= {}
    emoticons[name][:english] = symbols[0]
    emoticons[name][:japanese] = symbols[1]
    emoticons
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
