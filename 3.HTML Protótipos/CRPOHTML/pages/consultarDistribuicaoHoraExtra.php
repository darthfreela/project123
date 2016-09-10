<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CRPO SERRA</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta http-equiv="Content-Language" content="pt-br">
    <?php require_once('script.php'); ?>
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
                        <h3 class="box-title">Consultar Distribuição de Horas Extras</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div>
                            <button type="button" onClick="window.location = '../../pages/quadroDistribuicaoHoraExtra/edit.php'" class="btn btn-block btn-primary">Novo</button>
                        </div>
                        </br>
						<div>
							<table id="motivos" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th></th>
										<th>Id Unidade</th>
										<th>Nome</th>
										<th>Cidade</th>
										<th>Horas</th>
										<th>Data Inicio</th>
										<th>Data Término</th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>123456789</td>
										<td>Parque dos Macaquinhos</td>
										<td>Caxias do Sul</td>
										<td>500</td>
										<td>01/04/2016</td>
										<td>07/04/2016</td>
										<td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
										<td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
									</tr>
									<tr>
										<td>2</td>
										<td>987654321</td>
										<td>Parque Cinquentenário</td>
										<td>Caxias do Sul</td>
										<td>200</td>
										<td>01/04/2016</td>
										<td>07/04/2016</td>
										<td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
										<td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
									</tr>
									<tr>
										<td>3</td>
										<td>666666666</td>
										<td>Praça do Vinho</td>
										<td>Bento Gonçalves</td>
										<td>161</td>
										<td>01/04/2016</td>
										<td>07/04/2016</td>
										<td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
										<td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
									</tr>
									<tr>
										<td>4</td>
										<td>000000000</td>
										<td>Praça da Santa</td>
										<td>Farroupilha</td>
										<td>500</td>
										<td>01/04/2016</td>
										<td>07/04/2016</td>
										<td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
										<td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<th></th>
										<th>Id Unidade</th>
										<th>Nome</th>
										<th>Cidade</th>
										<th>Horas</th>
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
