#puts 'mike'
#puts 'is cool'
#puts prints on new lines 
#print prints on 1 line 
#print 'giraffe'
#print ' is cool'
#puts '   /|'
#puts '  / |'
#puts ' /  |'
#puts '/___|'

#name = 'John'
#age = '35'
#puts name + ' ' + age;
#name = 'Bob'
#puts name + ' ' + age;

#varibles store string number boolean 
#name = 'mike' 
#age = 75
#gpa = 3.2
#isMale = true
#isFemale = false
#flaws = nil #nil no value
#puts "ok\" guys"
#puts "ok\n guys" # \n print on new line
#string functions string.upcase() string.downcase() string.strip() to remove white spaces string.length() string.include?'string'
#phrase = 'giraffe academy';
#puts phrase[0]
#puts phrase[0,3] => gir doesnt include a
#phrase.index('g') 0

#puts 5 + 9;
#puts 2**3; # = 2^3
#puts 10 % 3;
#num = 20;
#puts ('my favorite num is ' + num.to_s) # num.to_s convert to string
#puts #num.abs() num.round() num.ceil() takes the higher number num.floor() takes the lower number
#puts Math.sqrt(36)
#puts Math.log(1)
#puts 10 / 7 # inter divide inter only gets inter back 10 / 7.0 with decimal get decimals back (floating point number)
#puts 'enter your name';
#name = gets.chomp() # gets input from user #.chomp() gets rid of new line
#puts ('hello ' + name + ', you are cool')

#puts 'enter a number'
#num1 = gets.chomp()
#puts 'enter another number'
#num2 = gets.chomp()
#ruby converts values into strings 
#puts (num1.to_i + num2.to_i)
#num.to_i convert to number
#num.to_f converts to floating points for decimal numbers 

#puts 'enter color'
#color = gets.chomp()
#puts 'enter plural_noun'
#plural_noun = gets.chomp()
#puts 'enter celebrity'
#celebrity = gets.chomp()

#puts ('roses are ' + color)
#puts (plural_noun + ' are blue')
#puts ('i love ' + celebrity)

#friends = Array['rex','snow','ana','tae','catherine']
#friends[3] = 'newfriend'
#puts friends[0]
#puts friends[-2]
#puts friends[0,3]
#puts friends[3]
# friends.reverse() prints array backwards friends.include? 'karen' //returns boolean value of true or false depending on array
# friends.sort() prints based of alphabet // if numbers would get error since number cant be read as string

#hash (dictionary)
#states = {
#    'NewYork' => 'NY',
#    :California => 'CA',
#    1 => 'FL'
#}
#puts states['NewYork']
#puts states[:California]
#puts states[1]

#methods (function equalvilent?)
#def sayhi(name = 'no name', age = -1)
#    puts ("Hello " + name + ', you are ' + age.to_s)
#end
#sayhi('tim',8)
#sayhi()
#def cube(num)
#  return num * num * num
#end
#puts cube(3);

#if statements

#isMale = true
#isTall = false
#if isMale and isTall
# puts 'you are a tall male'
#else 
# puts 'you either not male or not tall'
#end

#def max(num1, num2, num3)
#  if num1 >= num2 and num1 >= num3
#    return num1
#  elsif num2 >= num1 and num2 >= num3
#    return num2
#  else 
#    return num3
#  end
#end
#puts max(1,2,3)

#puts 'enter first number:'
#num1 = gets.chomp().to_f
#puts 'enter operator:'
#op = gets.chomp()
#puts 'enter second number:'
#num2 = gets.chomp().to_f
#
#if op == '+'
#    puts (num1 + num2)
#elsif op == '-'
#    puts (num1 - num2)
#elsif op == '/'
#    puts (num1 / num2)
#elsif op == '*'
#    puts (num1 * num2)
#else
#    puts 'Invalid operator'
#end

#case expression
#def get_day_name(day)
#  day_name = ''
#  case day
#  when 'mon'
#    day_name = 'Monday'
#  when 'tue'
#    day_name = 'Tuesday'
#  when 'wed'
#    day_name = 'Wednesday'
#  when 'thu'
#    day_name = 'Thursday'
#  when 'fri'
#    day_name = 'Friday'
#  when 'sat'
#    day_name = 'Saturday'
#  when 'sun'
#    day_name = 'Sunday'
#  else 
#    day_name = 'Invalid abbreviation'
#  end
#  return day_name
#end
#puts get_day_name('mon')

#while loops
#index = 1
#while index <= 8
# puts index
# index += 1
#end

#guessing game
#secretWord = 'monkey'
#guess = ''
#guessCount = 0
#guessLimit = 3
#outOfGuessess = false
#while guess != secretWord and !outOfGuessess
#  if guessCount < guessLimit
#  puts 'enter guess:'
#  guess = gets.chomp()
#  guessCount += 1
#  else 
#    outOfGuessess = true
#  end
#end
#if outOfGuessess
#  puts 'you lose'
#else
#  puts 'you won'
#end

#for loops
#friends = ['rex','snow','ana','tae','catherine']
#for index in 0..5
#    puts index
#end

#6.times do |index|
#    puts index
#end

#friends.each do |ele|
#    puts ele
#end    

#for ele in friends
#    put ele
#end

#exponent method
#def pow(baseNum, powNum)
#    result = 1
#    powNum.times do 
#        result = result * baseNum
#    end
#    return result
#end
#puts pow(5,2)

=begin
    sdasdasdasdasdasda
=end

#file = File.open('practice.txt', 'r')
#puts file.read
#file.close()

=begin
File.open('practice.txt', 'r') do |file|
    #puts file
    #puts file.read()
    #puts file.readline()  prints line in file and stops first one and so on so forth
    #puts file.readline()
    #puts file.readchar() prints character in file and stops after first one
    for line in file.readlines()
        puts line
    end
end
=end

#can make file as well
#File.open('practice.txt', 'a') do |file| #a is to append to the end of file #w overwrite whole file 
#    file.write("\nOscar, Accounting") #\n for new line start only works in "double quotes"
#end
#File.open('practice.txt' 'r+') do |file|
#    file.readline()
#    file.write('Hi')
#end

=begin
luckyNums = [4, 8, 15, 16, 23, 42]
#lucky_nums['dog']
#num = 10 / 0
begin 
    luckyNums['dog']
    #num = 10 / 0
rescue ZeroDivisionError
    puts 'Division by zero error'
rescue TypeError => e
    puts e
end
=end

=begin
#class and objects
class Book
  attr_accessor :title, :author, :pages
end

book1 = Book.new()
book1.title = 'Harry Potter'
book1.author = 'JK Rowling'
book1.pages = 400

book2 = Book.new()
book2.title = 'Lord of the rings'
book2.author = 'Tolkein'
book2.pages = 500
=end

=begin
class Book
    attr_accessor :title, :author, :pages
    def initialize(title, author, pages)
        @title = title   #@title is refering to the attribute of the obj
        @author = author
        @pages = pages
    end
  end
  
  book1 = Book.new('Harry Potter','JK Rowling', 400)
  book2 = Book.new('Lord of the rings','Tolkein', 500)

puts book1.title
=end

#obj methods
Class Student
  attr_accessor :name, :major, :gpa
  def initialize(name, major, gpa)
    @name = name
    @major = major
    @gpa = gpa
  end

  def has_honors 
    if @gpa >= 3.5
    return true
  end
    return false
  end
end

student1 = Student.new('Rex', 'CompSci', 2.0)
student2 = Student.new('Faker', 'League', 4.0)

puts student1.has_honors