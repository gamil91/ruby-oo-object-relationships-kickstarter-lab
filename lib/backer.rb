require 'pry'

class Backer

attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        my_projects = ProjectBacker.all.select do |proj_backer_obj|
            proj_backer_obj.backer == self
        end
            my_projects.map do |my_proj|
                my_proj.project
            end
        end

    
    



end