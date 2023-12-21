module PartsTimestampsSplit
  extend ActiveSupport::Concern

  def timestamps_parts_split(text)
    a = text.split("\n")
    # remove the empty strings and the first element
    a = a.select {|s| s != "" && s != "WEBVTT"}
    # split the array into two subarrays: one for the timestamps and one for the parts
    timestamps, parts = a.partition {|s| s.match (/\d{2}:\d{2}:\d{2}\.\d{3}/)}

    return timestamps, parts
  end
  
end