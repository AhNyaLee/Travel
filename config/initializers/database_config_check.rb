begin
  ActiveRecord::Base.establish_connection
  puts "Подключение к базе данных успешно!"  
rescue StandardError => e
  puts "Произошла ошибка: #{e.message}"
  exit(1) 
end