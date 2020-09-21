class CozinhaController < ApplicationController

    def index
        @pedidos = Pedido.all
    end

    def edit
       
    end

    def update
        pedido = Pedido.find(params[:id])
        pedido.update(:status => true)
        redirect_to cozinha_path
    end
end
