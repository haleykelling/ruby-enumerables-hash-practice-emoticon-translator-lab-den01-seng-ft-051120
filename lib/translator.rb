# require modules here
require "yaml"
emoticons = YAML.load_file('lib/emoticons.yml')

def load_library(emoticons)
  # code goes here
  p emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library(emoticons)
