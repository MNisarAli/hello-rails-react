# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create five different greeting messages
Message.create!(content: "Hello, world!")
Message.create!(content: "Greetings from the Rails and React app!")
Message.create!(content: "May your day be filled with joy!")
Message.create!(content: "Welcome to the wonderful world of web development!")
Message.create!(content: "Happy coding!")
