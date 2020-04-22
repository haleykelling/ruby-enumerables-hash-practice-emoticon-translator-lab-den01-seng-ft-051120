# require modules here
require "yaml"
emoticons = YAML.load_file('lib/emoticons.yml')

def load_library(emoticons)
  # code goes here
  emoticons.reduce({}) do |(name, symbols)|
    emoticons[name] ||= {}
    emoticons[name][:english] = symbols[0]
    emoticons[name][:japanese] = symbols[1]
  end
  emoticons_updated
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library(emoticons)
