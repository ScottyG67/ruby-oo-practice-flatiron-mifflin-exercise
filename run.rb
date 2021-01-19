require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

#set up 5 managers and 5 employees
prng = Random.new
i = 1
5.times do
    manager = Manager.new("name#{i}","department#{i}",prng.rand(100))
    x = 1
    5.times do
        Employee.new("name#{x}",manager, prng.rand(100000))
        x +=1
    end
    i+=1
end

#set up 1 manager with 2 employees that can be called
manager_bob = Manager.new("Bob","BloodOaths", 75)
jim = Employee.new("Jim",manager_bob,37000)
karen = Employee.new("karen",manager_bob, 36000)


binding.pry
puts "done"
