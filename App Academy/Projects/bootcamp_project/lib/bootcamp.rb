class Bootcamp
    def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new {|hash, key| hash[key] = [] }
    end

    def name
        @name
    end

     def slogan
        @slogan
    end

     def student_capacity
        @student_capacity
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(string)
        @teachers << string
    end
    
    def enroll(string)
        if @students.length < @student_capacity 
                @students << string
                return true
        else
            false
        end
    end

    def enrolled?(student_name)
        @students.include?(student_name)        
    end

    def student_to_teacher_ratio
        ( @students.length / @teachers.length * 1.0).round
    end

    def add_grade(student, grade)
        if self.enrolled?(student) == true
            @grades[student] << grade
            return true
            
        else
            return false
        end
    end

    def num_grades(student)
        @grades[student].length
    end

    def average_grade(student)
        if self.enrolled?(student) && self.num_grades(student) > 0 
            @grades[student].sum / @grades[student].length
        end
    end


end
