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
                        <h3 class="box-title">Consultar Boletim</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form">
						<div class="col-md-12">
							<div class="form-group col-md-6">
								<a href="visualizarboletim.php"><i class="fa fa-circle"></i>Boletim Gerais</a>
							</div>
							<div class="form-group col-md-6">
								<a href="../../pages/importarBoletimInstrucao/listaBoletimInstucao.php"><i class="fa fa-circle-o"></i>Boletim de Instrução</a>
							</div>
						</div>
                        <div class="box-body">                            
                            <table id="motivos" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>Data importação</th>
                                    <th>Boletim CRPO</th>
                                    <th>Boletim Importado</th>
                                    <th>Excluir</th>
                                    <th>Exportar</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>11/04/2016</td>
                                    <td><img src="Word.png"><a href="#"> Boletim Avaliação e Mérito de Oficiais</a></td>
                                    <td><img src="Word.png"><a href="#"> Boletim POA 103</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                    <td><a class="btn btn-success"><i class="fa fa-close "></i>Exportar</a></td>
                                </tr>
                                <tr>
                                    <td>11/04/2016</td>
                                    <td><img src="Word.png"><a href="#"> Boletim Avaliação e Mérito de Praças</a></td>
                                    <td><img src="Word.png"><a href="#"> Boletim POA 104</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                    <td><a class="btn btn-success"><i class="fa fa-close "></i>Exportar</a></td>
                                </tr>   
                                <tr>
                                    <td>11/04/2016</td>
                                    <td><img src="Word.png"><a href="#"> Boletim de Movimentação de Oficiais</a></td>
                                    <td><img src="Word.png"><a href="#"> Boletim POA 105</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                    <td><a class="btn btn-success"><i class="fa fa-close "></i>Exportar</a></td>
                                </tr>
                                <tr>
                                    <td>11/04/2016</td>
                                    <td><img src="Word.png"><a href="#"> Boletim de Movimentação de Praça</a></td>
                                    <td><img src="Word.png"><a href="#"> Boletim POA 106</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                    <td><a class="btn btn-success"><i class="fa fa-close "></i>Exportar</a></td>
                                </tr>
                                <tr>
                                    <td>11/04/2016</td>
                                    <td><img src="Word.png"><a href="#"> Boletim de Movimentação Especial</a></td>
                                    <td><img src="Word.png"><a href="#"> Boletim POA 107</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                    <td><a class="btn btn-success"><i class="fa fa-close "></i>Exportar</a></td>
                                </tr>
                                <tr>
                                    <td>11/04/2016</td>
                                    <td><img src="Word.png"><a href="#"> Boletim Geral</a></td>
                                    <td><img src="Word.png"><a href="#"> Boletim POA 108</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                    <td><a class="btn btn-success"><i class="fa fa-close "></i>Exportar</a></td>
                                </tr>
                          </tbody>
                            <tfoot>
                                <tr>
                                    <th>Data importação</th>
                                    <th>Boletim CRPO</th>
                                    <th>Boletim Importado</th>
                                    <th>Excluir</th>
                                    <th>Exportar</th>
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
