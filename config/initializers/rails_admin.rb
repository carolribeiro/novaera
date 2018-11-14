RailsAdmin.config do |config|
  
  config.main_app_name = ["Nova Era - Painel Administrativo", ""]
  
  
  config.model Aluno do
    navigation_icon 'fa fa-user-graduate'
    configure :dtnasc do
      label "Data de nascimento"
    end
    create do
      fields :nome, :rg, :cpf, :telefone, :celular, :sexo, :status
      fields :dtnasc do
        strftime_format '%d/%m/%Y'
      end
      fields :referencia_aluno, :endereco
    end  
    list do
      fields :nome, :rg, :cpf, :telefone, :celular, :sexo, :status
      fields :dtnasc do
        strftime_format '%d/%m/%Y'
      end
      fields :referencia_aluno, :endereco  
    end  
    edit do
      fields :nome, :rg, :cpf, :telefone, :celular, :sexo, :status
      fields :dtnasc do
        strftime_format '%d/%m/%Y'
      end
      fields :referencia_aluno, :endereco
    end  
    show do
      fields :nome, :rg, :cpf, :telefone, :celular, :sexo, :status
      fields :dtnasc do
        strftime_format '%d/%m/%Y'
      end
      fields :referencia_aluno, :endereco
    end  
  end
  
  config.model Curso do
    navigation_icon 'fa fa-certificate'
    configure :descricao do
      label "Descrição"
    end
    list do
      exclude_fields :id, :created_at, :updated_at
    end  
  end
  
  config.model Usuario do
    label "Usuário" 
    navigation_icon 'fa fa-user'
    configure :password do
      label "Senha"
    end
    configure :password_confirmation do
      label "Confirmação de senha"
    end
    list do
      exclude_fields :id, :password, :password_confirmation, :created_at, :updated_at, :reset_password_sent_at, :remember_created_at
    end
    # show do
    #   exclude_fields :id, :password_digest
    # end  
    edit do
      # field  :nome
      # field  :email
      # field  :password_digest
      exclude_fields :reset_password_sent_at, :remember_created_at, :noticias, :galerias
    end 
  end

  config.model Galeria do
    navigation_icon 'fa fa-camera'
    configure :created_at do
      label "Criado em"
    end
    configure :updated_at do
      label "Atualizado em"
    end
    configure :usuario do
      label "Usuário"
    end
    list do
      exclude_fields :id
      fields :created_at, :updated_at do
        strftime_format '%d/%m/%Y'
      end
    end
    edit do
      exclude_fields :created_at, :updated_at
      field :usuario, :hidden do
        visible false
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end  
  end

  config.model Noticia do
    label "Notícia" 
    navigation_icon 'fa fa-comment'
    configure :titulo do
      label "Título"
    end
    configure :created_at do
      label "Criado em"
    end
    configure :updated_at do
      label "Atualizado em"
    end
    configure :usuario do
      label "Usuário"
    end
    create do
      exclude_fields :created_at, :updated_at
      # configure :usuario do
      #   visible false
      # end
    
      # configure :usuario_id, :hidden do
      #   visible true
      #   default_value do
      #     bindings[:view]._current_user.id
      #   end
      # end
    end
    
    edit do
      exclude_fields :created_at, :updated_at
      field :usuario, :hidden do
        visible false
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end  
    list do
      exclude_fields :id
      fields :created_at, :updated_at do
        strftime_format '%d/%m/%Y'
      end
    end
    show do
      fields :titulo, :texto, :foto
      fields :created_at, :updated_at do
        strftime_format '%d/%m/%Y'
      end
      field :usuario do
          searchable :nome
      end
    end
 end

  config.model Turma do
    navigation_icon 'fa fa-users'
    list do
      exclude_fields :id, :created_at, :updated_at
      
    end
  end


  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :usuario
  end
  config.current_user_method(&:current_usuario)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
