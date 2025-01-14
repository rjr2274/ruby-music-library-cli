module Concerns::Findable
    
    def find_by_name(name)
        all.find { |instance|
        instance.name == name
        }
    end

    def find_or_create_by_name(name)
        if self.find_by_name(name) != nil
         self.find_by_name(name)
        else
         self.create(name)
        end
     end
end