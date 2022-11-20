class Bootcamp

    attr_reader :name, :slogan, :teachers, :students
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan 
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |h, k| h[k] = []}
    end

    def hire(teacher)
        @teachers << teacher
    end

    def enroll(student)
        if @students.length < @student_capacity
        @students << student 
        return true
        end
        false
    end

    def enrolled?(student)
        @students.include?(student)
    end

    def student_to_teacher_ratio
        @students.length / @teachers.length
    end

    def add_grade(student, grade)
        if self.enrolled?(student)
            @grades[student] << grade
                return true
        end
        false
    end

    def num_grades(student)
        @grades[student].length
    end

    def average_grade(student)
        if @grades[student].length < 1 || !self.enrolled?(student)
            return nil
        end
        @grades[student].sum / @grades[student].length
    end
end
