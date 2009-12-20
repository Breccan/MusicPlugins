class User < ActiveRecord::Base    
    has_many :content_objects
    
    acts_as_tagger
    acts_as_authentic do |c|
    end

    def deliver_password_reset_instructions!
      reset_perishable_token!  
      Notifier.deliver_password_reset_instructions(self)  
    end
end
