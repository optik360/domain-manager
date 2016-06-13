class DomainsController < ApplicationController

  before_action :authenticate_user!

  responders :flash

  expose :domains
  expose :domain, attributes: :domain_params

  respond_to :html, :csv, :xls

  def index
    respond_with domains
  end

  def create
    domain.save
    respond_with domain, location: domains_path
  end

  def destroy
    domain.destroy
    respond_with domain, location: domains_path
  end

  def update
    domain.update_attributes(domain_params)
    respond_with domain, location: domains_path
  end

  def import
    Domain.import(params[:file])
    redirect_to domains_path, notice: t('imported')
  end

  private

  def domain_params
    params.require(:domain).permit!
  end
end