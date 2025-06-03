require 'json'

def read_file
  file = File.open('data.json', 'r')
  data = file.read
  file.close
  return data
end

def process_data(data)
  parsed = JSON.parse(data)
  parsed.each do |item|
    puts "User: #{item['name']}"
    puts "Email: #{item['email']}"
  end
end

def log_activity(msg)
  File.open('log.txt', 'w') do |f|
    f.write(msg + "\n")
  end
end

data = read_file()
process_data(data)
log_activity("Finished processing at " + Time.now.to_s)

unused_var = 42
