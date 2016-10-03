class ImportNewslettersController < ApplicationController
  def new
    @importnews = ImportNewsletter.new
    @importnews_show = ImportNewsletter.all
  end


  def edit
    @importnews = ImportNewsletter.find(params[:id])
  end


  def create
    @importnews = ImportNewsletter.new(importnews_params)
    @importnews_show = ImportNewsletter.all

    if @importnews.save
      redirect_to  new_import_newsletter_path, notice: "a cadastrada com sucesso."
    else
      render action: :new
    end
  end


  def update
    @importnews = ImportNewsletter.find(params[:id])
    @importnews.update_attributes(importnews_params)

    redirect_to  new_import_newsletter_path, notice: "a editada com sucesso."
  end


  def destroy
    @importnews = ImportNewsletter.find(params[:id])
    @importnews.destroy
    redirect_to  new_import_newsletter_path, notice: "a removida com sucesso."
  end


  private
  def importnews_params
    params.require(:import_newsletter).permit(:id_user, :nome, :posto)
  end
end
