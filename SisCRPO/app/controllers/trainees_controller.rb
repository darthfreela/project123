class TraineesController < ApplicationController
  def new
    @trainee = Trainee.new
    @trainee_show = Trainee.all
    #mock de cidades simulando retorno do banco
    @select_cidades = Array.new
    (1..5).each do |i|
        @select_cidades <<  "#{i}"
    end
  end

 def create
      @trainee = Trainee.new(trainee_params)
      @trainee_show = Trainee.all

      #mock de cidades simulando retorno do banco
      @select_cidades = Array.new
      (1..5).each do |i|
          @select_cidades <<  "#{i}"
      end

      if @trainee.save
        redirect_to new_trainee_path, notice: "Estagiário cadastrado com sucesso."
      else
        render action: :new
      end
  end

  def destroy
      @trainee = Trainee.find(params[:id])
      @trainee.destroy
      redirect_to new_trainee_path, notice: "Estagiário removido com sucesso."
  end

  def edit
    @trainee = Trainee.find(params[:id])
    #mock de cidades simulando retorno do banco
    @select_cidades = Array.new
    (1..5).each do |i|
        @select_cidades <<  "#{i}"
    end
  end

  def update
        @trainees = Trainee.find(params[:id])
        @trainees.update_attributes(trainee_params)

        redirect_to new_trainee_path, notice: "Estagiário editado com sucesso."
  end

  private
  def trainee_params
       params.require(:trainee).permit(:name, :cpf, :gender, :birth, :semester,
          :city_id, :email, :bank_agency_wallet, :worked_days, :worked_hours ,
          :transport_voucher, :contract_term, :neighborhood, :zip_code,
          :user_id_last_change,:actived, :date_final_contract)
  end
end
