class Admin::HomeControllerPolicy 
  attr_reader :user, :ctrlr

  def initialize(user, ctrlr)
    @user = user
    @ctrlr = ctrlr
  end

  def welcome?
    user.admin?
  end

end