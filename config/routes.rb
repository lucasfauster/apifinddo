Rails.application.routes.draw do
  root to: "funcionario#index" 

  # Rotas dos atendentes
  get "atendente", to: "atendente#index"

  # Rotas dos cozinheiros
  get "cozinha", to: "cozinha#index"
  get "pedidos/edit/:id", to: "cozinha#update"

  # Rotas do gerente
  get "gerente", to: "gerente#index"
  get "pedidos/finaliza/:id", to: "gerente#destroy"
end
