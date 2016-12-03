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
      @maps = TemporaryReplacementsMap.all
   end

   def generate_pdf_by_html
    @replacements_array = TemporaryReplacement.where(substitute_id_func: !nil)
    title = "map_#{Time.now}.pdf"
    kit = PDFKit.new(generate_map_html(@replacements_array), :page_size => 'a4', :orientation => 'Landscape')
    kit.to_pdf(Rails.root.join('temporary_replacements_pdf', title))
    save_in_data_base title
    redirect_to new_temporary_replacements_map_path, notice: "Mapa gerado com sucesso."
   end

   def redirect_to_options
    redirect_to new_temporary_replacements_map_option_path
   end

   def save_in_data_base(title)
      tmp = TemporaryReplacementsMap.new
      tmp.title = title
      tmp.path = "/temporary_replacements_pdf/#{title}"
      tmp.save
   end

   def generate_map_html(replacements)
        options = TemporaryReplacementsMapOption.first
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

                                             ___________________________________</br>
                                             <b>#{options.director_tag}</b>
                                        </td>
                                        <td colspan='2'><b>MAPA DE SUBSTITUI&Ccedil;&Atilde;O TEMPOR&Aacute;RIA</b></br>
                                            </br>
                                            OPM: #{options.opm_tag}</br>
                                            Tel: #{options.opm_telephone_tag}</br>
                                            Numero do centro de custo: #{options.cost_center_tag} </br>
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



def destroy
  @map = TemporaryReplacementsMap.find(params[:id])
  File.delete("#{Rails.root}/temporary_replacements_pdf/#{@map.title}")
  @map.destroy
  redirect_to new_temporary_replacements_map_path, notice: "Mapa removido com sucesso."
end

def download
   send_file "#{Rails.root}/temporary_replacements_pdf/#{params[:file_name]}"
end


private

 end
