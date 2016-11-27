class TemporaryReplacementsMapController < ApplicationController
    include ApplicationHelper

    TABLE_HEADER = "<tr>
                                    <th>No</th>
                                    <th>Id Func.</th>
                                    <th>Nome do Servidor</th>
                                    <th>Posto </br> Grad</th>
                                    <th>Cargo Assumido </br> Lei 10993/97</th>
                                    <th>Fun&ccedil;&atilde;o Superior exercida</th>
                                    <th>Data que assumia a fun&ccedil;&atilde;o</th>
                                    <th>Data dispensa fun&ccedil;&atilde;o</th>
                                    <th>No Dias a pagar</th>
                                    <th>No e data do BI que publicou fun&ccedil;&atilde;o superior</th>
                                </tr>"

   def new

   end

   def generate_pdf_by_html
    @replacements_array = TemporaryReplacement.all
    kit = PDFKit.new(generate_map_html(@replacements_array), :page_size => 'a4', :orientation => 'Landscape')
    kit.to_pdf(Rails.root.join('temporary_replacements_pdf', "map_#{Time.now}.pdf"))
    redirect_to new_temporary_replacements_map_path, notice: "Mapa gerado com sucesso."
   end

   def save_in_data_base

   end

   def generate_map_html(replacements)
        rows = ''
        header = "<span>
                            <b>ESTADO DO RIO GRANDE DO SUL</br>
                            SECRETARIA DE SEGURAN&Ccedil;A P&Uacute;BLICA </br>
                            BRIGADA MILITAR - CRPO SERRA</b>
                        </span>"
        check_header ="<table>
                                    <tr>
                                        <td colspan='3'>Ao Sr Diretor do DA/DF.</br>
                                             Em 02/02/2016
                                             </br>

                                             ___________________________________________</br>
                                             <b>CARLOS ANDRE ANTUNES - 3 Sgt Sct Art </b>
                                        </td>
                                        <td colspan='2'><b>MAPA DE SUBSTITUI&Ccedil;&Atilde;O TEMPOR&Aacute;RIA</b></br>
                                            </br>
                                            OPM: CRPOSERRA - Sede</br>
                                            Tel: 54 - 3204 5500 </br>
                                            Numero do centro de custo: 555555 </br>
                                            MOVIMENTO FINANCEIRO - MAR&Ccedil;O/2016 </br>
                                            Efetividade: FEVEREIRO/2016</br></br>
                                        </b></td>
                                        <td colspan='2'>
                                            Conferido em ___/_____/___
                                            </br>
                                            </br>_________________________
                                            </br>
                                            Respons&aacute;vel pelo SVenc
                                        </td>
                                        <td colspan='3'>
                                            Lan&ccedil;ar no mapa de Efetividade </br></br>
                                            MF ___/_____/___
                                            </br>
                                            _______________________
                                            </br>
                                            Chefe da SVenc DF/DA
                                        </td>
                                    </tr>"
        #criar tela html
       replacements.each do | r |
            occupant = User.where(id_func: r.occupant_id_func).first
            substitute = User.where(id_func: r.substitute_id_func).first
            occupant_function = Function.where(id: occupant.function_id).first
            occupant_function_post_graduation = PostGraduation.where(id: occupant_function.post_graduation_id)
            number_days_to_pay = 20#(r.date_end - r.date_begin).to_i
            rows = "#{rows} <tr>
                                            <td> #{r.id} </td>
                                            <td> #{substitute.id_func} </td>
                                            <td> #{substitute.name} </td>
                                            <td> #{substitute.post_graduation} </td>
                                            <td> #{occupant_function_post_graduation.name} </td>
                                            <td> #{occupant.id_func} </td>
                                            <td> #{data_br r.date_begin} </td>
                                            <td> #{data_br r.date_end} </td>
                                            <td> #{number_days_to_pay} </td>
                                            <td> #{r.buletim_number} </td>
                                        </tr>
                                        <tr>
                                        <td> 3 </td>
                                        <td> 15 </td>
                                        <td> substituts</td>
                                        <td> 3o tchan </td>
                                        <td colspan='6' style='background-color: grey;'><center> Titular em Ferias </center> </td>

                                        </tr>"
       end
       return "<html>
                        <style type='text/css'>
                            table{
                                width: 100%;
                            }
                            table, th, td {
                                border: 1px solid black;
                                border-collapse: collapse;
                            }
                        </style>
                        #{header}
                        #{check_header}
                        #{TABLE_HEADER}
                        #{rows}
                        </table>
                    </html>"
   end

def create
  @trainee = Trainee.new(trainee_params)
  @trainee.user_id_last_change = current_user.id
  @trainee_show = Trainee.all

      #mock de cidades simulando retorno do banco
      @select_cities = City.where(:uf => "RS")

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
    @botao = 'edit'
    @trainee = Trainee.find(params[:id])
    #mock de cidades simulando retorno do banco
    @select_cities = City.where(:uf => "RS")
end

def update
    @trainee = Trainee.find(params[:id])
    @trainee.user_id_last_change = current_user.id
    if @trainee.update_attributes(trainee_params)
       redirect_to new_trainee_path, notice: "Estagiário editado com sucesso."
   else
              # mostra os erros no terminal ** muito util saporra
              # Rails.logger.info(@trainee.errors.messages.inspect)
              redirect_to new_trainee_path, :flash => { :error => "Erro ao editar o estagiário!" }
          end
      end

      private
      def trainee_params
         params.require(:trainee).permit(:name, :cpf, :gender, :birth, :semester,
          :city_id, :email, :bank_agency_wallet, :worked_days, :worked_hours ,
          :transport_voucher, :contract_term, :neighborhood, :zip_code,
          :user_id_last_change,:actived, :date_final_contract)
     end
 end
