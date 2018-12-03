class GaleriaController < ApplicationController
    
  def show
    #@galeria = Galeria.all.order("created_at DESC") # SELECT * FROM Noticia ORDER BY created_at DESC
    @galerias = Galeria.find(params[:id])
    
  end
    
end
