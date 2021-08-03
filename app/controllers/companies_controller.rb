class CompaniesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_company, only: %i[update destroy]

  def index
    @pagy, @companies = pagy(Company.all)
    @company = Company.new
  end

  def create
    @company = Company.create(company_params)
    if @company.save
      flash[:success] = 'company was successfully created'
      redirect_to companies_path
    else
      flash[:error] = 'company was not created'
    end
  end

  def update
    if @company.update(company_params)
      flash[:success] = 'company was successfully updated'
      redirect_to companies_path
    else
      flash[:error] = 'company was not updated'
    end
  end

  def destroy
    @company.destroy
    flash[:error] = 'company was successfully destroyed'
    redirect_to companies_path
  end

  private

  def company_params
    params.require(:company).permit(:name, :address)
  end

  def set_company
    @company = Company.find(params[:id])
  end
end
