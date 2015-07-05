class KoansController < ApplicationController
  def show
    @koan = Koan.find(params[:id])
  end
end
