require "yaml"

def load_library(file_path)
  original_library = YAML.load_file(file_path)
  emoticon_library = {}
  
  emoticon_library["get_meaning"] = original_library.reduce({}) do |memo, (key, value)|
      memo[value[1]] = key
      memo
    end

  emoticon_library["get_emoticon"] = original_library.reduce({}) do |memo, (key, value)|
    memo[value[0]] = value[1]
    memo
  end
  
  emoticon_library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end