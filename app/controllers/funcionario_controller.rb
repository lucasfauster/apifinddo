class FuncionarioController < ApplicationController

    def index

        # Recebe os dados do formulário do login
        usuario = params.permit(:email, :senha)
        funcionarios = Funcionario.all
        funcionarios.each do |funcionario|

            # Direciona o funcionario para a pagina do respectivo cargo
            if usuario["email"] == funcionario.email && usuario["senha"] == funcionario.senha
                flash[:warning] = ""
                case funcionario.cargo
                when "cozinheiro"
                    redirect_to cozinha_path
                when "gerente"
                    redirect_to gerente_path
                when "atendente"
                    redirect_to atendente_path
                end
            end
            flash[:warning] = "Conta não existente"
        end
    end
end
