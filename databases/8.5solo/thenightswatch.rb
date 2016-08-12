
#The Night's Watch

require 'sqlite3'
require 'faker'

#Created the database
db = SQLite3::Database.new("nightsWatch.db")
db.results_as_hash = true


#conditionally create tables
create_nightsWatch_table = <<-SQL
  CREATE TABLE IF NOT EXISTS nightsWatch(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    village_id VARCHAR(255),
    house int,
    fighting INT,
    age INT,
    FOREIGN KEY (village_id) REFERENCES village(id)
  )
SQL

create_village_table = <<-SQL
  CREATE TABLE IF NOT EXISTS village(
    id INTEGER PRIMARY KEY,
    village_name VARCHAR(255)
  )
SQL

#Create Tables
db.execute(create_nightsWatch_table)
db.execute(create_village_table)

#method to fill all the info we might want 
def fill_nightswatch(db, name, house, village_id, fighting, age)
  db.execute("INSERT INTO nightsWatch (name, village_id, house, fighting, age) VALUES (?, ?, ?, ?, ?)", [name, village_id, house, fighting, age])
end

def fill_village_table(db, village_name)
  db.execute("INSERT INTO village (village_name) VALUES (?)", [village_name])
  
end

#remove people who have a fighting skill less than the one fed into the method
def kickfrom(db, fighting) 
  db.execute("DELETE FROM nightsWatch WHERE fighting<?", [fighting])
end

#Fills random info in and calls on creating_nightwatch person
def fill_database(db, number_of_people, number_of_villages)
  number_of_people.to_i.times do
    fill_nightswatch(db, Faker::GameOfThrones.character, Faker::GameOfThrones.house, Faker::Number.between(1, number_of_villages), Faker::Number.between(1, 5), Faker::Number.between(1, 60))
  end
  number_of_villages.times do
    fill_village_table(db, Faker::GameOfThrones.city)
  end
end

all_nightwatch = db.execute("SELECT * FROM nightsWatch")


continue_loop = true
#rows = db.execute2 "SELECT nightsWatch.name, nightsWatch.age, nightsWatch.house, nightsWatch.fighting, village.village_name FROM nightsWatch JOIN village ON nightsWatch.village_id=village.id" 
while continue_loop == true
  puts "-------------------------------------------------------------------------------------------"
  puts "The Nights Watch Person creator!"
  puts " "
  puts "Type 'auto' to automatically create The Nights Watch Characters."
  puts "Type 'manual' if you would like to manually add the info for a new character."
  puts "Type 'kick' if you want to kick people from the nights watch based on their fighting skill."
  puts "Type 'print' if you would like to see the current table"
  puts "Or type 'quit' to quit."
  puts "-------------------------------------------------------------------------------------------"
  input = gets.chomp
  case input
    when ("auto")
      puts "How many new characters would you like to add?"
      new_knights = gets.to_i
      puts "How many villages possibility do you want?"
      village_amount = gets.to_i
      fill_database(db, new_knights, village_amount)
    when ("manual")
      puts "Enter the name you would like to manually add to the database"
      name_to_add = gets.chomp
      puts "Please enter the rest of the information: House, village id(number), fighting rating(1-5), age(number).  Separate with spaces only, no commas."
      manual_info_array = gets.chomp.split(' ')
      fill_nightswatch(db, name_to_add, manual_info_array[0], manual_info_array[1].to_i, manual_info_array[2].to_i, manual_info_array[3].to_i)
    when ("kick")
      puts "All of the Nights Watch is scored on their combat skills from 1-5"
      puts "What should the skill cutoff be? Anyone rated below that letter will be removed"
      combat_cutoff = gets.to_i
      kickfrom(db, combat_cutoff)
    when ("print")
      rows = db.execute2 "SELECT nightsWatch.name, nightsWatch.age, nightsWatch.house, nightsWatch.fighting, village.village_name FROM nightsWatch JOIN village ON nightsWatch.village_id=village.id"
      rows.each do |row|
        puts "%-20s %-10s %-10s %-10s %-30s" % [row[0], row[1], row[2], row[3], row[4]]
      end
    when ("quit")
      continue_loop = false
    else
      puts "Please enter 'auto', 'manual', 'kick', or 'quit'."
    end
end


 # has many through relationship
 # duties they might have