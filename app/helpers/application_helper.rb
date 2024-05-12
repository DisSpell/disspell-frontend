module ApplicationHelper
  def multi_excerpt(text, phrase)
    return unless text && phrase
    
    timestamps, parts = timestamps_parts_split(text)

    timestamps_array = []
    line = parts.select {|s| s.match (/#{phrase}/i)}.each do |part|
      index = parts.find_index (part)
      timestamps_array.push(timestamps[index])  
    end

    result = [line, timestamps_array]

    return result
  end

  def timestamps_parts_split(text)
    a = text.split("\n")
    # remove the empty strings and the first element
    a = a.select {|s| s != "" && s != "WEBVTT"}
    # split the array into two subarrays: one for the timestamps and one for the parts
    timestamps, parts = a.partition {|s| s.match (/\d{2}:\d{2}:\d{2}\.\d{3}/)}

    return timestamps, parts
  end

  def convert_vtt_timestamp(timestamp)
    timestamp = timestamp.split('-->').first
    # Split the timestamp and convert to integers/float
    hours, minutes, seconds_with_ms = timestamp.split(':').map(&:to_f)
    seconds = seconds_with_ms.floor
    # milliseconds = ((seconds_with_ms - seconds) * 1000).round

    # Build the human-readable format
    formatted_time = ""
    formatted_time << "#{hours}h " if hours.positive?
    formatted_time << "#{minutes.to_i}m " if minutes.positive?
    formatted_time << "#{seconds.to_s.rjust(2, '0')}s"

    return formatted_time
  end

end
