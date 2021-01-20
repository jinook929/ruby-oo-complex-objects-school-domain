# code here!
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if !@roster.keys.include?(grade)
            @roster[grade] = []
            @roster[grade] << student
        else
            @roster[grade] << student
        end
    end

    def grade(num)
        @roster[num]
    end

    def sort
        @sorted_roster = {}
        @roster.sort.each {|grade, students|
            @sorted_roster[grade] = students.sort
        }
        @sorted_roster
    end
end