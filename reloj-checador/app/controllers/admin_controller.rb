class AdminController < ApplicationController
  before_action :set_admin, only: [:show]

  def show; end

  private

  def set_admin
    @admin = User.find(params[:id])
  end
end
