class RegistrationsController < Devise::RegistrationsController
  def sign_up_params
    params.require(:user).permit(:email,:password,:password_confirmation,:first_name,:last_name,:address,:phone,:user_type,:shop)
  end
end
