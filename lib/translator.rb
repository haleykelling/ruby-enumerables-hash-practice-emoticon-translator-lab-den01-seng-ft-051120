# require modules here
require "yaml"

def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)

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
