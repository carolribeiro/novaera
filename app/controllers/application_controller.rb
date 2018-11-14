class ApplicationController < ActionController::Base
    def index
       @noticias = Noticia.last(3).reverse # SELECT * FROM Noticia ORDER BY created_at DESC LIMIT 3;
       #@noticias = Noticia.joins(:usuario)
    end
    
    def sobre
    end

    def noticias
        @noticias = Noticia.all.order("created_at DESC") # SELECT * FROM Noticia ORDER BY created_at DESC
    end

    def galeria
    end

    def contato
    end
end
