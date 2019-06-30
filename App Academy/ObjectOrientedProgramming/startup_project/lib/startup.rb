require "employee"


class Startup
attr_reader :name, :funding, :salaries, :employees
attr_writer :employees, :funding

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
        if @salaries.has_key?(title)
            true
        else
            false
        end
    end
    
    def >(another_startup)
        if self.funding > another_startup.funding
            return true
        else
            return false
        end
    end

    def hire(employee_name, title)
        if self.valid_title?(title)
            @employees << Employee.new(employee_name, title)
        else
            raise "title is invalid!"
        end
    end

    def size
        return @employees.length
    end

    def pay_employee(employee)
        owed = @salaries[employee.title]
        if @funding >= owed
            employee.pay(owed)
            @funding -= owed
        else
            raise "Not enough funding"
        end
    end
        
    def payday
        @employees.each do |employee|
            self.pay_employee(employee)
        end
    end


    def average_salary
        total = 0 
        @employees.each do |emp|
            total += @salaries[emp.title]
        end
        avg = total / @employees.length
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(another_startup)
        self.funding += another_startup.funding
        another_startup.salaries.each do |title, value|      
            if !@salaries.has_key?(title)
                @salaries[title] = value
            end   
        end
        another_startup.employees.each do |emp|
            self.employees << emp
        end
        another_startup.close
    end

end
