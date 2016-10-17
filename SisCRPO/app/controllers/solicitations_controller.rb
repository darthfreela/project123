class SolicitationsController < ApplicationController
  def new
      @solicitation = Solicitation.new
      @solicitation_show = Solicitation.where(user_id: current_user.id_func).all
      @approval_solicitations = ApprovalSolicitation.joins(:user => [:function])
      # .where('function.manager_function_id' => current_user.function_id).all
      # @approval_solicitations = ApprovalSolicitation.joins(:user => [{:function}]).where(function: {manager_function_id: current_user.function_id})
      puts("***************************************")
      # (@approval_solicitations).each do |i|
      #   puts "Value of local variable is #{i}"
      # end
      puts(@approval_solicitations)
      puts("***************************************")

# joins(:user => [:postograduacao, :function])
# Category.joins(articles: [{ comments: :guest }, :tags])
# Category.joins(:posts => [{:comments => :guest}, :tags])
# @posts = current_user.posts.joins(:comment).order("comments.date ASC").includes(:image)


# Region.joins(zones: :country).where(country: {country_id: $country_id})
#
# This will only work if you have your models like this:
#


#DB******************************************
# #Country.rb
# class Country < ActiveRecord::Base
#  has_many :zones, as: :zone
# end
# #Zone.rb
# class Zone < ActiveRecord::Base
#  has_many :regions, as: :region
#  belongs_to :country, foreign_key: :zone_id
# end
#
# #Region.rb
# class Region < ActiveRecord::Base
#  belongs_to :zone, foreign_key: :region_id
# end



# Category.joins(:posts => [{:comments => :guest}, :tags])


#       Article.where(author: author)
# Author.joins(:articles).where(articles: { author: author })

# # via an association
# Article.first.categories.any?
# Article.first.categories.many?

# User.where(id: 1).joins(:articles).explain
  end

  def create
    @solicitation = Solicitation.new(solicitation_params)
    @solicitation.status = 0

    if @solicitation.type_solicitation != 2
        @solicitation.type_license = nil
        @solicitation.license_days = nil
    end

    @solicitation_show = Solicitation.where(user_id: current_user.id_func).all
    if @solicitation.save
      @approval_solicitation = ApprovalSolicitation.new
      @approval_solicitation.user_id =  @solicitation.user_id
      @approval_solicitation.request_solicitation_id =  @solicitation.id
      @approval_solicitation.save

      redirect_to new_solicitation_path, notice: "Solicitação registrada com sucesso."
    else
      render action: :new
    end
  end

  def destroy
    @solicitation = Solicitation.find(params[:id])
    @solicitation.destroy
    redirect_to new_solicitation_path, notice: "Solicitação excluída com sucesso."
  end

  def edit
    @botao = 'edit'
    @solicitation = Solicitation.find(params[:id])
  end

  def update
    @solicitation = Solicitation.find(params[:id])
    @solicitation.update_attributes(solicitation_params)

    redirect_to new_solicitation_path, notice: "Solicitação alterada com sucesso."
  end

  private
  def solicitation_params
      params.require(:solicitation).permit(:type_solicitation,
       :type_license ,:license_days, :date_begin, :date_end, :user_id, :description )
  end
end
