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
        $(function () {
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
                        <h3 class="box-title">Visualização Boletim de Instrução</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                       <div class="col-md-12">
							<div class="form-group col-md-6">
								<a href="../../pages/verificacaoBoletim/visualizarboletim.php"><i class="fa fa-circle-o"></i>Boletim Gerais</a>
							</div>
						   <div class="form-group col-md-6">
							   <a href="listaBoletimInstrucao.php"><i class="fa fa-circle"></i>Boletim de Instrução</a>
						   </div>
					   </div>
                        </br>                       
                        <table id="motivos" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>ID Func.</th>
									<th>Posto/Graduação Nome</th>
                                    <th>Descrição</th>
									<th>Data</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>524578</td>
									<td>1º Sgt Soares</td>
                                    <td>Aenean placerat. In vulputate urna eu arcu. Aliquam erat volutpat. Suspendisse potenti. Morbi mattis felis at nunc. Duis viverra diam non justo. In nisl. 
									Nullam sit amet magna in magna gravida vehicula. Mauris tincidunt sem sed arcu. Nunc posuere. Nullam</td>
									<td>01/02/2016</td>
                                    <td><a class="btn btn-warning" onClick="window.location = '../../pages/importarBoletimInstrucao/editarBoletins.php'"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>478742</td>
									<td>MJ Santos</td>
                                    <td>Aenean placerat. In vulputate urna eu arcu. Aliquam erat volutpat. Suspendisse potenti. Morbi mattis felis at nunc. 
									Duis viverra diam non justo. In nisl. Nullam sit amet magna in magna gravida vehicula. Mauris tincidunt sem sed arcu. 
									Nunc posuere. Nullam lectus justo, vulputate eget, mollis sed, tempor sed, magna. Cum sociis natoque penatibus et magnis dis parturient montes, 
									nascetur ridiculus mus. Etiam neque.</td>
									<td>01/02/2016</td>
                                    <td><a class="btn btn-warning" onClick="window.location = '../../pages/importarBoletimInstrucao/editarBoletins.php'"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>12457812</td>
									<td>SD Nunes</td>
                                    <td>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit 
										quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut 
										officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic 
										tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. </td>
									<td>01/02/2016</td>
                                    <td><a class="btn btn-warning" onClick="window.location = '../../pages/importarBoletimInstrucao/editarBoletins.php'"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>1278782</td>
									<td>3º SGT Brito</td>
                                    <td>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, 
										totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</td>
									<td>01/02/2016</td>
                                    <td><a class="btn btn-warning" onClick="window.location = '../../pages/importarBoletimInstrucao/editarBoletins.php'"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>128782</td>
									<td>2º SGT Romero</td>
                                    <td>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. 
										Aliquam erat volutpat. Nunc auctor. Mauris pretium quam et urna. Fusce nibh. Duis risus. Curabitur sagittis hendrerit ante.</td>
									<td>01/02/20163</td>
                                    <td><a class="btn btn-warning" onClick="window.location = '../../pages/importarBoletimInstrucao/editarBoletins.php'"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>12124778</td>
									<td>SD Tenorio</td>
                                    <td> Proin pede metus, vulputate nec, fermentum fringilla, vehicula vitae, justo. Fusce consectetuer risus a nunc. Aliquam ornare wisi eu metus. 
									Integer pellentesque quam vel velit. Duis pulvinar.</td>
									<td>01/02/2016</td>
                                    <td><a class="btn btn-warning" onClick="window.location = '../../pages/importarBoletimInstrucao/editarBoletins.php'"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
									<th></th>
                                    <th>ID Func.</th>
									<th>Posto/Graduação Nome</th>
                                    <th>Descrição</th>
									<th>Data</th>
                                    <th></th>
                                    <th></th>
								</tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </section>
        </div>
        <!-- /CORPO -->
        <div class="control-sidebar-bg"></div>
    </div>
</body>
</html>

