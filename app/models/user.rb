class User < ActiveRecord::Base
<<<<<<< HEAD
    
    has_many :content_objects
  
=======
    acts_as_tagger
>>>>>>> ec29352752cd3d6d73e1398211b2e210c3c2d16c
    acts_as_authentic do |c|
    end

    def deliver_password_reset_instructions!
      reset_perishable_token!  
      Notifier.deliver_password_reset_instructions(self)  
    end
end
