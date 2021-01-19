class Manager
    attr_accessor :name, :department, :age

    def initialize(name,department,age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end 

    @@all =[]

    def self.all
        @@all
    end
    def self.all_departments
        #new array with mannager and department (don't need age)
        self.all.map {|manager| [manager.name,manager.department]}

    end

    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def hire_employee(employee_name,salary)
        Employee.new(employee_name,self,salary)
    end

    def self.average_age
        age_array = self.all.map {|manager| manager.age}
        age_array.sum.to_f/age_array.length.to_f
    end
        


end
