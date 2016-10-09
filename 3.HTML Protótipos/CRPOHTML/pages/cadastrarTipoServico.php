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
    <script>
		$(document).ready(function() {
			$('select').select2();
		});
    </script>
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
						<h3 class="box-title">Cadastro Tipo de Serviço</h3>
					</div>
					<form role="form">
						<div class="box-body">
							<div class="form-group col-md-2">
								<label for="sigla">Sigla</label>
								<input type="text" class="form-control" id="sigla" placeholder="Sigla" maxlength="6" required>
							</div>
							
							<div class="form-group col-md-4">
									<label for="nomeServico">Nome do Serviço</label>
									<input type="text" class="form-control" id="nomeServico" placeholder="Nome do Serviço">
							</div>
			              	
			              	<div class="col-lg-4">
								<div class="form-group">
									<label for="funcao">Função</label>
									<select class="form-control" id="funcao" >
										<option>Guarda</option>
										<option>Auxiliar Administrativo</option>
										<option>Porteiro</option>
									</select>
								</div>
							</div>
							
							<div class="form-group col-md-2">
			                  <label for="ativo">Ativo</label>
			                  <select class="form-control" id="ativo">
			                    <option value="Sim">Sim</option>
			                    <option value="Não">Não</option>
			                  </select>
			              	</div>
										              	
			              	<div class="col-lg-4">
								<div class="form-group">
									<label for="uniformeList">Uniformes</label>
									<select class="form-control" id="uniformeList" multiple="multiple">
										<option>Uniforme 1</option>
										<option>Uniforme 2</option>
										<option>Uniforme 3</option>
										<option>Uniforme 4</option>
									</select>
								</div>
							</div>
										              							
						</div>
						
						<div class="box-footer">
							<button type="submit" class="btn btn-success" onClick="window.location = '../../pages/cadastroTiposServico/tiposServico.php'">Salvar</button>
							<button type="close" class="btn btn-danger" onClick="window.location = '../../pages/cadastroTiposServico/tiposServico.php'">Cancelar</button>
						</div>
					</form>
				</div>
            </section>
        </div>
        <!-- /CORPO -->
        <div class="control-sidebar-bg"></div>
    </div>
</body>
</html>
