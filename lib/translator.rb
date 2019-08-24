require "yaml"

def load_library(file_path)
  original_library = YAML.load_file(file_path)
  p original_library
  emoticon_library["get_meaning"] = original_library.reduce({}) do |memo, (key, value)|
      memo[value[1]] = key
      memo
    end
  
  
  
  
  emoticon_library["get_emoticon"] = {}
  emoticon_library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end