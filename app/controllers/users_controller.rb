class Account::UsersController < Account::AccountController
  def index
    @user = current_user
  end

  def update
    @user = Users.find(current_user.id)

    if @user.update_attributes(user_params)
      redirect_to account_user_index_path
    else
      render template: 'account/user/index'
    end
  end
end
