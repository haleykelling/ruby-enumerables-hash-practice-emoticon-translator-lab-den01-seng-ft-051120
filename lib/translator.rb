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

def get_english_meaning(file_path, emoticon)
  emoticon_hash = load_library(file_path)
  emoticon_hash.each do |name, symbols_hash|
    symbols_hash.each do |language, symbol|
      if symbol == emoticon
        return name
      end
      puts "Sorry, that emoticon was not found"
    end
  end
end
