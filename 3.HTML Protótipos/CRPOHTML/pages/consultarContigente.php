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
                        <h3 class="box-title">Consultar Contingente</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div>
                            <button class="btn btn-block btn-primary" onClick="window.location = '../../pages/contingente/contingente.php'">Novo</button>
                        </div>
                        </br>
                       
                        <table id="motivos" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Função</th>
									<th>Descrição da Função</th>
                                    <th nowrap>Numero de Vagas</th>
									<th nowrap>Numero de Vagas Ocupadas</th>
									<th nowrap>Numero de Vagas Remanescentes</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Chefe do CRPO serra</td>
									<td>Uma função para a todos governar, Uma função para encontrá-los, Uma função para a todos trazer e na escuridão aprisioná-los Na Terra de Caxias do Sul onde todos se deitam</td>
                                    <td>1</td>
									<td>1</td>
									<td>0</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Chefe do P1</td>
									<td>Chefia todos da P1</td>
                                    <td>1</td>
									<td>1</td>
									<td>0</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Chefe do P4</td>
									<td>Chefia todos da P2</td>
                                    <td>1</td>
									<td>1</td>
									<td>0</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Chefe do P3</td>
									<td>Chefia todos da P3</td>
                                    <td>1</td>
									<td>1</td>
									<td>0</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Analista do P1</td>
									<td>Analisa todos os processos da P1</td>
                                    <td>666</td>
									<td>333</td>
									<td>333</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Analista do P2</td>
									<td>Analisa todos os processos da P2</td>
                                    <td>666</td>
									<td>424</td>
									<td>242</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th></th>
                                    <th>Função</th>
									<th>Descrição da Função</th>
									<th nowrap>Numero de Vagas</th>
									<th nowrap>Numero de Vagas Ocupadas</th>
									<th nowrap>Numero de Vagas Remanescentes</th>
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
