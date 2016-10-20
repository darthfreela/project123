class InstructionBulletinsController < ApplicationController
	def new
        @instruction_bulletins = InstructionBulletin.new
        @instruction_bulletins_show = InstructionBulletin.all
    end

    def create
        @instruction_bulletins = InstructionBulletin.new(instruction_bulletins_params)
        @instruction_bulletins_show = InstructionBulletin.all

        if @instruction_bulletins.save
            redirect_to new_instruction_bulletins_path , notice: "Boletim de Instrução cadastrado com sucesso."
        else
            render action: :new
        end
    end

    def edit
        @botao = 'edit'
        @instruction_bulletins = InstructionBulletin.find(params[:id])
    end

    def update
        @instruction_bulletins = InstructionBulletin.find(params[:id])
        if @instruction_bulletins.update_attributes(instruction_bulletins_params)
            redirect_to new_instruction_bulletins_path, notice: "Boletim de Instrução cadastrado com sucesso."
        else
            redirect_to new_instruction_bulletins_path, :flash => { :error => "Erro ao editar a Boletim de Instrução!" }
        end
    end

    def destroy
        @instruction_bulletins = InstructionBulletin.find(params[:id])
        @instruction_bulletins.destroy
        redirect_to new_instruction_bulletins_path, notice: "Boletim removida com sucesso."
    end

    private
    def instruction_bulletins_params
        params.require(:instruction_bulletin).permit(:id_func, :date_begim, :date_end)
    end
end