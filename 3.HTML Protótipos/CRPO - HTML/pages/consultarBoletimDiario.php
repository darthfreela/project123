<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CRPO SERRA</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
   <?php require_once('script.php'); ?>
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
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Consultar Boletim Diário</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form">
						<div class="col-md-2">
                            <button class="btn btn-block btn-primary">Gerar Boletim Diario</button>
                        </div>
                        <div class="box-body">                            
                            <table id="motivos" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>Data da Geração</th>                                    
                                    <th></th>
                                    <th></th>
									<th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>11/04/2016</td>
									<td><a class="btn btn-warning"><i class="fa fa-eye "></i>Visualizar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                    <td><a class="btn btn-success"><i class="fa fa-send-o "></i>Enviar</a></td>
                                </tr>
                                <tr>
                                    <td>10/04/2016</td>
									<td><a class="btn btn-warning"><i class="fa fa-eye "></i>Visualizar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                    <td><a class="btn btn-success"><i class="fa fa-send-o "></i>Enviar</a></td>
                                </tr>   
                                <tr>
                                    <td>09/04/2016</td>
									<td><a class="btn btn-warning"><i class="fa fa-eye "></i>Visualizar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                    <td><a class="btn btn-success"><i class="fa fa-send-o "></i>Enviar</a></td>
                                </tr>
                                <tr>
                                    <td>08/04/2016</td>
									<td><a class="btn btn-warning"><i class="fa fa-eye "></i>Visualizar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                    <td><a class="btn btn-success"><i class="fa fa-send-o "></i>Enviar</a></td>
                                </tr>
                                <tr>
                                    <td>07/04/2016</td>
									<td><a class="btn btn-warning"><i class="fa fa-eye "></i>Visualizar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                    <td><a class="btn btn-success"><i class="fa fa-send-o "></i>Enviar</a></td>
                                </tr>
                                <tr>
                                    <td>06/04/2016</td>
									<td><a class="btn btn-warning"><i class="fa fa-eye "></i>Visualizar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                    <td><a class="btn btn-success"><i class="fa fa-send-o "></i>Enviar</a></td>
                                </tr>
                          </tbody>
                            <tfoot>
                                <tr>
									<th>Data da Geração</th>                                    
                                    <th></th>
                                    <th></th>
									<th></th>
                                </tr>
                            </tfoot>
                        </table>
</br></br>

                            
                        </div>
                        <div class="box-footer">
                            
                        </div>
                    </form>
                </div>
                <!-- /.box -->
            </section>
        </div>
        <!-- /CORPO -->
        <div class="control-sidebar-bg"></div>
    </div>
</body>
</html>
