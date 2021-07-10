class CompaniesController < ApplicationController
  before_action :set_company, only: %i[show edit update destroy]

  def index
    @companies = Company.all
  end

  def show; end

  def edit; end

  def new; end

  def create
    @company = Company.create(company_params)
    if @company.save
      flash[:success] = 'company successfully created'
    else
      flash[:warning] = 'company was not successfully created'
    end
    redirect_to companies_path
  end

  def update
    if @company.update(company_params)
      flash[:success] = 'Company was updated'
    else
      flash[:warning] = 'Company was not updated'
    end
    redirect_to companies_path
  end

  def destroy
    @company.destroy
    flash[:danger] = 'Company was deleted'
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
