<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CRPO SERRA</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta http-equiv="Content-Language" content="pt-br">
   <?php require_once('script.php'); ?>
    <script>
       /* $(function () {
            $("#motivos").DataTable({
                "language": {
                    "lengthMenu": "Mostrar _MENU_ entradas",
                    "zeroRecords": "Nenhum registro encontrado",
                    "info": "Mostrando _PAGE_ de _PAGES_ páginas",
                    "infoEmpty": "Nenhum registro encontrado",
                    "infoFiltered": "(filtrado apartir de  _MAX_ registros no total)",
                    "search": "Pesquisar: "
                },
                "oLanguage": {
                    "oPaginate": {
                      "sPrevious": "Anterior",
                      "sNext": "Próximo"
                }
              }
            });
        }); */
		$(document).ready(function(){
            $("#motivos tr:odd").addClass("odd");
            $("#motivos tr:not(.odd)").hide();
            $("#motivos tr:first-child").show();
            
            $("#motivos tr.odd").click(function(){
                $(this).next("tr").toggle();
                $(this).find(".arrow").toggleClass("up");
            });
            //$("#motivos").jExpand();
        });
    </script>
    <style type="text/css">
        .btn-warning, .btn-danger {
            height: 4px;
        }

            .btn-warning > .fa, .btn-warning > .glyphicon, .btn-warning > .ion,
            .btn-danger > .fa, .btn-danger > .glyphicon, .btn-danger > .ion {
                font-size: 15px;
                display: inline-block;
            }

        .btn-warning, .btn-danger {
            padding: 2px 5px 22px 5px;
            margin: 0 0 0 10px;
        }

        .btn-block {
            width: 6%;
        }
		td, th {white-space:nowrap}			
	</style>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

        <header class="main-header">
            <a href="index.php" class="logo">
                <span class="logo-mini"><b>CRPO</b></span>
                <span class="logo-lg"><b>CRPO</b>&nbsp;Serra</span>
            </a>
            <nav class="navbar navbar-static-top" role="navigation">
                <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>
            </nav>
        </header>
        <!-- MENUS -->
        <?php require_once('menuLateralEsquerdo.php'); ?>
        <!-- /MENUS -->
        <!-- CORPO -->
        <div class="content-wrapper">
            <section class="content">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Consultar Substituição Temporária Expand</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div>
                            <button type="button" onClick="window.location = '../../pages/substituicaoTemporaria/edit.php'" class="btn btn-block btn-primary">Novo</button>
                        </div>
                        </br>
						<div style="overflow: scroll">
							<table id="motivos" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th></th>
										<th>Id Func.</th>
										<th>Nome do Servidor</th>
										<th>Posto Grad.</th>
										<th>Cargo Assumido Lei 10993/97</th>
										<th>Situação do Cargo</th>
										<th></th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</div></td>
										<td>2081597</div></td>
										<td>João da Silva Di no Sauro</div></td>
										<td>MAJ QOEM</div></td>
										<td>TEN CEL QOEM</div></td>
										<td>Vago</div></td>
										<td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
										<td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
									</tr>
									<tr>
										<td></td>
										<td colspan="7">
											<b>Ocupante:</b> <br>
											<b>Motivo de Indisponibilidade:</b> <br>
											<b>Função Superior Exercida:</b> CH DO EM DO CRPO SERRA<br>
											<b>Data de Assunção:</b> 22/01/2016<br>
											<b>Data de Dispensa:</b> <br>
											<b>N° de dias a Pagar:</b> 29<br>
											<b>N° e data do BI Publição:</b> BI 012 de 29/01/16<br>
											<b>N° Boletim:</b> 12345<br>
										</td>
									</tr>
									<!-- Arrow1-->
									<tr>
										<td><div class="arrow">2</div></td>
										<td><div class="arrow">2181597</div></td>
										<td><div class="arrow">João da Silva Tira no Sauro</div></td>
										<td><div class="arrow">CAP QOEM</div></td>
										<td><div class="arrow">MAJ QOEM</div></td>
										<td><div class="arrow">Ocupado</div></td>
										<td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
										<td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
									</tr>
									<tr>
										<td></td>
										<td colspan="7">
											<b>Ocupante:</b> José de Souza Rex<br>
											<b>Motivo de Indisponibilidade:</b> Férias<br>
											<b>Função Superior Exercida:</b> CHEFE DO P1<br>
											<b>Data de Assunção:</b> 19/01/2016<br>
											<b>Data de Dispensa:</b> 06/02/2016<br>
											<b>N° de dias a Pagar:</b> 05<br>
											<b>N° e data do BI Publição:</b> BI 03 de 08/01/16<br>
											<b>N° Boletim:</b> 54920<br>
										</td>
									</tr>
									<!-- Arrow2-->
									<tr>
										<td><div class="arrow">3</div></td>
										<td><div class="arrow">2181597</div></td>
										<td><div class="arrow">João da Silva Tira no Sauro</div></td>
										<td><div class="arrow">CAP QOEM</div></td>
										<td><div class="arrow">MAJ QOEM</div></td>
										<td><div class="arrow">Ocupado</div></td>
										<td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
										<td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
									</tr>
									<tr>
										<td></td>
										<td colspan="7">
											<b>Ocupante:</b> José de Souza Rex<br>
											<b>Motivo de Indisponibilidade:</b> Férias<br>
											<b>Função Superior Exercida:</b> CHEFE DO P4<br>
											<b>Data de Assunção:</b> 15/02/2016<br>
											<b>Data de Dispensa:</b> 27/02/2016<br>
											<b>N° de dias a Pagar:</b> 12<br>
											<b>N° e data do BI Publição:</b> BI 012 de 29/01/16<br>
											<b>N° Boletim:</b> 1588<br>
										</td>
									</tr>
									<!-- Arrow3-->
									<tr>
										<td><div class="arrow">4</div></td>
										<td><div class="arrow">2381597</div></td>
										<td><div class="arrow">Caim dos Santos de Jesus</div></td>
										<td><div class="arrow">1° SGT QPM-1</div></td>
										<td><div class="arrow">1° TEN QTPM</div></td>
										<td><div class="arrow">Vago</div></td>
										<td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
										<td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
									</tr>
									<tr>
										<td></td>
										<td colspan="7">
											<b>Ocupante:</b> <br>
											<b>Motivo de Indisponibilidade:</b> <br>
											<b>Função Superior Exercida:</b> ANALISTA DO P-1<br>
											<b>Data de Assunção:</b> 18/01/2016<br>
											<b>Data de Dispensa:</b> 02/02/2016<br>
											<b>N° de dias a Pagar:</b> 01<br>
											<b>N° e data do BI Publição:</b> BI 09 de 20/01/16<br>
											<b>N° Boletim:</b> 89932<br>
										</td>
									</tr>
									<!-- Arrow4-->
									<tr>
										<td><div class="arrow">5</div></td>
										<td><div class="arrow">2481597</div></td>
										<td><div class="arrow">Abel Pereira Silva</div></td>
										<td><div class="arrow">1 SGT QOM-1</div></td>
										<td><div class="arrow">1° TEN QTPM</div></td>
										<td><div class="arrow">Vago</div></td>										
										<td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
										<td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
									</tr>
									<tr>
										<td></td>
										<td colspan="7">
											<b>Ocupante:</b> <br>
											<b>Motivo de Indisponibilidade:</b> <br>
											<b>Função Superior Exercida:</b> ANALISTA DO P-1<br>
											<b>Data de Assunção:</b> 02/02/2016<br>
											<b>Data de Dispensa:</b> <br>
											<b>N° de dias a Pagar:</b> 28<br>
											<b>N° e data do BI Publição:</b> BI 025 de 02/03/16<br>
											<b>N° Boletim:</b> 2947<br>											
										</td>
									</tr>
									<!-- Arrow5-->
								</tbody>
								<tfoot>
									<tr>
										<th></th>
										<th>Id Func.</th>
										<th>Nome do Servidor</th>
										<th>Posto Grad.</th>
										<th>Cargo Assumido Lei 10993/97</th>
										<th>Situação do Cargo</th>
										<th></th>
										<th></th>
										<th></th>
									</tr>
								</tfoot>
							</table>
						</div>
                    </div>
                </div>
            </section>
        </div>
        <!-- /CORPO -->
        <div class="control-sidebar-bg"></div>
    </div>
</body>
</html>
