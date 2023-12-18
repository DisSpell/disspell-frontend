module SearchHelper
  def multi_excerpt(text, phrase, options = {})
   return unless text && phrase
   
   radius  = options.fetch(:radius, 100)
   omission = options.fetch(:omission, "...")
   
   raise if phrase.is_a? Regexp
   regex = /.{,#{radius}}#{Regexp.escape(phrase)}.{,#{radius}}/i
   parts = text.scan(regex)
    
   # To include the timestamp, we need to extract it from the text
   # We assume the timestamp format is hh:mm:ss.mmm
   timestamp_regex = /\d{2}:\d{2}:\d{2}\.\d{3}/
   timestamps = text.scan(timestamp_regex)
   
   # We then pair each part with its corresponding timestamp
   # We use zip to combine the two arrays into an array of arrays
   # We use map to transform each subarray into a string
   # We use join to concatenate the strings with a separator
   result = parts.zip(timestamps)
  #  .map {|part, timestamp| "#{timestamp} #{part}"}

  #  Result = Struct.new(:parts, :timestamps)
  #  result = Result.new(parts, timestamps)
   
   return result
  end
 end
 