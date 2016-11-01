# Instances of a class
class Employee
  attr_reader :first_name, :last_name

  def initialize(input_options)
    @first_name = input_options[:first_name] ||= "John"
    @last_name = input_options[:last_name] ||= "Doe"
    @salary = input_options[:salary] ||= 50000
    @status = input_options[:status] ||= true 
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

  def full_name
    if @last_name.end_with?("s")
      @first_name + " " + @last_name + ", Esquire"
    else
      @first_name + " " + @last_name
    end
  end
end

# employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
# employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
# # employee1.print_info
# # employee2.print_info
# # employee2.give_annual_raise
# # employee2.print_info

# # puts employee2.print_info

# employee3 = Employee.new({})

# puts employee3.print_info

counter = 0

sample_names = ["Jim", "James", "Joe"]

100.times do 
  employee = Employee.new({})
  counter += 1
  puts employee.print_info
end
