class Employee
    attr_accessor :name, :manager, :salary

    def initialize(name,manager,salary)
        @name = name
        @manager = manager
        @salary = salary
        @@all << self
    end 

    @@all =[]

    def self.all
        @@all
    end

    def manager_name
        manager.name
    end

    def self.paid_over(salary_target)
        self.all.select {|employee| employee.salary > salary_target}
    end

    def self.find_by_department(department_search)
        self.all.find {|employee| employee.manager.department == department_search}
    end

    def tax_bracket
        Employee.all.select do |employee|
            employee.salary.between?(self.salary-1000,self.salary+1000) && employee != self
        end
    end



end
