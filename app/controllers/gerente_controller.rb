class GerenteController < ApplicationController
    
    def index
        @pedidos = Pedido.all
        @produtos = Produto.all
        @total_dia = TotalDium.find(1).total
    end

    def addTotal total
        dia1 = TotalDium.find(1)
        totalDia = dia1.total + total
        dia1.update(total: totalDia)
    end

    def destroy
        id = params[:id]

        # Calculando o valor total da compra
        total = 0
        pedido = Pedido.find(id)
        produtos = Produto.all
        for i in 0...pedido.produtos.length()
            produto = produtos.find(pedido.produtos[i])
            total += produto.preco * pedido.quantidades[i]
        end

        # Adicionando o valor da compra ao total do dia
        addTotal(total)

        #Destruindo pedido
        Pedido.destroy id
        redirect_to gerente_path
    end
end
