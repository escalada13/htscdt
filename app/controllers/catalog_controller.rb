class CatalogController < ApplicationController
  def index
  	@htscdts = Htscdt.order(:htsus)
  end
end
