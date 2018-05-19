class AccountsController < ApplicationController
  before_action :load_account, only: :show
  def show
    render json: @account
  end


  private
    def load_account
      @account = Account.find_by(id: params['id'])
    end
end
