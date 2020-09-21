=begin
funcionarios_lista = [
    ["João", "cozinheiro", "joao@rest.com", "123"],
    ["Mario", "atendente", "mario@rest.com", "123"],
    ["Pedro", "gerente", "pedro@rest.com", "123"]
]

funcionarios_lista.each do |nome, cargo, email, senha|
    Funcionario.create( nome: nome, cargo: cargo, email: email, senha: senha )
end

produtos_lista = [
    ["Macarrão", 20.99],
    ["Pizza", 30.99],
    ["Pudim", 5.90],
    ["Refrigerante", 5.99],
    ["Vinho", 10.99],
    ["Suco", 5.90]
]

produtos_lista.each do |nome, preco, quantidade|
    Produto.create( nome: nome, preco: preco, quantidade: quantidade)
end

pedidos_lista = [
    [2, false, [2,1], [2,2]],
    [1, false, [3,1], [1,2]],
    [3, true, [2,1,3], [2,1,1]],
    [5, false, [2,1,4], [1,2,3]],
    [4, false, [3,1,5,4], [5,3,1,3]],
    [6, false, [2,1,3,6], [2,1,1,2]],
]

pedidos_lista.each do |mesa, status, produtos, quantidades|
    Pedido.create( mesa: mesa, status: status, produtos: produtos, quantidades: quantidades)
end"
=end

TotalDium.create( total: 0.0)