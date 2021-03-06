class ClientsController < ApplicationController

  before_action :authenticate_user!

  responders :flash

  expose :clients
  expose :client, attributes: :client_params

  respond_to :html

  def create
    client.save
    respond_with client, location: params[:redirect_path]
  end

  def destroy
    if client.domains.count == 0
      client.destroy
      respond_with client, location: client_params
    else
      flash[:error] = "Vous pouvez pas supprimer un client ayant toujours un ou plusieurs domaine(s)"
      redirect_to :back
    end
  end

  def update
    client.update_attributes(client_params)
    respond_with client, location: params[:redirect_path]
  end

  private

  def client_params
    params.require(:client).permit!
  end
end