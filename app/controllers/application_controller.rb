class ApplicationController < ActionController::Base
    def index
       @noticias = Noticia.last(3).reverse # SELECT * FROM Noticia ORDER BY created_at DESC LIMIT 3;
       @galerias = Galeria.last(3).reverse # SELECT * FROM Galeria ORDER BY created_at DESC LIMIT 3;
    end
    
    def sobre
    end

    def noticias
        @noticias = Noticia.all.order("created_at DESC") # SELECT * FROM Noticia ORDER BY created_at DESC
    end

    def galeria
        @galerias = Galeria.all.order("created_at DESC") # SELECT * FROM Galeria ORDER BY created_at DESC
    end

    def contato
    end
    
    def login
    end
    
end
