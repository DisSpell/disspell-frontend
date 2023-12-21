module SearchHelper
  # def multi_excerpt(text, phrase)
  #   return unless text && phrase
    
  #   a = text.split("\n")
  #   # remove the empty strings and the first element
  #   a = a.select {|s| s != "" && s != "WEBVTT"}
  #   # split the array into two subarrays: one for the timestamps and one for the parts
  #   timestamps, parts = a.partition {|s| s.match (/\d{2}:\d{2}:\d{2}\.\d{3}/)}

  #   # puts "PARTS", parts
  #   # puts "TIMESTAMPS FIRST", timestamps
  #   # puts "-" * 80

  #   timestamps_array = []
  #   # select the line that contains the word
  #   line = parts.select {|s| s.match (/#{phrase}/i)}.each do |part|
  #     index = parts.find_index (part)
  #     # puts "INDEX HERER", index
  #     timestamps_array.push(timestamps[index])  
  #   end

  #   # puts "TIMESTAMP HERE", timestamps_array
  #   # puts "LINE HERE", line

  #   result = [line, timestamps_array]

  #   # puts "RESULT", result

  #   return result
  # end
 end
 