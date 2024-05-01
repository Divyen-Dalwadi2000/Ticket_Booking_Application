class CinemaPolicy 
    attr_reader :user, :cinema

    def initialize(user, cinema)
      @user = user
      @cinema = cinema
    end
  

    def create?
      user.admin? 
    end

    def update?
      user.present? && user.admin? 
    end

    def destroy?
      user.present? &&  user.admin? 
    end
end 