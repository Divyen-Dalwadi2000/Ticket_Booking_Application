class MoviePolicy 
    attr_reader :user, :movie

    def initialize(user, movie)
      @user = user
      @movie = movie
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