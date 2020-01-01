# frozen_string_literal: true

# Edit RegistrationsController in Devise Like add name to sign_up
class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_Confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_Confirmation, :current_password)
  end

end