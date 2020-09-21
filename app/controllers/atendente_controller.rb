class AtendenteController < ApplicationController

    def index
        @pedidos = Pedido.all
    end

    def new
        @produtos = Produto.all
    end

    def create
        pedido = params.require(:pedido).permit(:mesa, :produtos, :quantidades)
    end
end
