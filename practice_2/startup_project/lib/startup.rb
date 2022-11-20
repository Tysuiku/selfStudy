require "employee"

class Startup

    attr_reader :name, :funding, :salaries, :employees
    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
        if @salaries[title] != nil
            return true
        end
        false
    end

    def >(other)
     self.funding > other.funding
    end

    def hire(name, title)
        raise "error" if !valid_title?(title)
        @employees << Employee.new(name, title)
    end

    def size
        @employees.length
    end

    def pay_employee(employee)
        if @funding >= @salaries[employee.title]
            employee.pay(@salaries[employee.title])
            @funding -= @salaries[employee.title]
        else 
            raise "not enough money"
        end
    end

    def payday
        @employees.each do |employee|
            pay_employee(employee)
        end
    end

    def average_salary
        total = 0
        
        @employees.each do |employee|
           total += @salaries[employee.title]
        end

        total / (@employees.length * 1.0)
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(other)
        @funding += other.funding
        other.salaries.each do |title, salary|
            if @salaries[title] == nil
                @salaries[title] = salary
            end
        end
        other.employees.each do |employee|
            @employees << employee
        end
        
        other.close
    end
    
end
