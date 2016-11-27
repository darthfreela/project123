class TemporaryReplacementsController < ApplicationController
  #autocomplete :food, :name, :full => true

  def new
      @tempReplacement = TemporaryReplacement.new
      @tempReplacement_show = TemporaryReplacement.all
      @users = User.all
      @post_gratuations = PostGraduation.all
      @functions = Function.all
  end

  def edit
      @botao = 'edit'
      @tempReplacement = TemporaryReplacement.find(params[:id])
      @tempReplacement.date_begin = @tempReplacement.date_begin.strftime("%d/%m/%Y")
      @tempReplacement.date_end = @tempReplacement.date_end.strftime("%d/%m/%Y")
      @users = User.all
      @post_gratuations = PostGraduation.all
      @functions = Function.all
  end

  def create
      @tempReplacement = TemporaryReplacement.new(tempReplacement_params)
      @tempReplacement_show = TemporaryReplacement.all
      @users = User.all
      @post_gratuations = PostGraduation.all
      @functions = Function.all
      if @tempReplacement.save
        redirect_to new_temporary_replacement_path, notice: "Substituição temporária cadastrada com sucesso."
      else
        render action: :new
      end
  end

  def update
      @tempReplacement = TemporaryReplacement.find(params[:id])
      @tempReplacement.update_attributes(tempReplacement_params)

      redirect_to new_temporary_replacement_path, notice: "Substituição temporária editada com sucesso."
  end

  def destroy
      @tempReplacement = TemporaryReplacement.find(params[:id])
      @tempReplacement.destroy
      redirect_to new_temporary_replacement_path, notice: "Substituição temporária removida com sucesso."
  end

  private
  def tempReplacement_params
      params.require(:temporary_replacement).permit(:substitute_id_func, :occupant_id_func, 
        :buletim_number, :unavailability_reason, :date_begin, :date_end)
  end
end
