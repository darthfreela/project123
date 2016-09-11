<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CRPO SERRA</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <?php require_once('script.php'); ?>
    <script>
		$(function() {
			$(".select2").select2();
		});
		
    </script>
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
                        <h3 class="box-title">Relatórios Gerais</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form">
                        <div class="box-body">
                            <div class="bs-example">
								<div class="col-md-12">
									<div class="form-group col-md-6">
										<label>Tipo de Relatorio</label>
										<select class="form-control select2" style="width: 100%;">
											<option selected="Selecione">Selecione</option>
											<option>Relatório de Horas</option>
											<option>Relatório de Usuarios</option>
											<option>Relatório de Férias </option>
											<option>Relatório de Faltas</option>
											<option>Relatório de Etapas</option>
										</select>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group col-md-2">
										<label> Data de Inicio</label>
                                        <input class="form-control" type="date" id="dtaIni"/>
									</div>	
									<div style="float:left">										
										<label><br></label>
										<label class="form-control" style="border: 0px">a</label>
									</div>
									<div class="form-group col-md-2">
                                        <label>Data de Término</label>
                                        <input class="form-control" type="date" id="dtaFim"/>
									</div>
								</div>								
                            </div>
                        </div>
                        <div class="box-footer">
                            <button type="submit" class="btn btn-success">Gerar Relatorio</button>
							<button type="submit" type="reset" class="btn btn-danger">Limpar</button>
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
