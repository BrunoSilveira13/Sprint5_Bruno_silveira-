require 'faker'

module Factory  
    class Dynamic
        def self.user_email
            {
                email: Faker::Internet.email
            }
        end
    end
end