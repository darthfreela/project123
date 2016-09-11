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
						<h3 class="box-title">Cadastro de OPM</h3>
					</div>
					<form role="form">
						<div class="box-body">
							<div class="form-group col-md-12">
								<div class="form-group col-md-2">
									<label for="sigla">Sigla</label>
									<input type="text" class="form-control" id="sigla" placeholder="Sigla" maxlength="6" required>
								</div>
								<div class="form-group col-md-5">
									<label for="Nomenclatura">Nome</label>
									<input type="text" class="form-control" id="nome" placeholder="Nome">
								</div>
                                <label for="Nomenclatura">Cidade</label>
                                <div class="form-group col-md-5">                                    
                                    <select>
                                      <option value="caxiasdosul">Caxias do Sul</option>
                                      <option value="saomarcos">São Marcos</option>
                                      <option value="passofundo">Passo Fundo</option>
                                      <option value="pelotas">Peotas</option>
                                    </select>
                                </div>
							</div>
							<div class="form-group col-md-12">
								<div class="form-group col-md-7">
									<label for="sigla">Descrição</label>
									<textarea rows="10"  class="form-control" id="sigla" placeholder="Sigla" required> </textarea> 
								</div>
								
							</div>
						</div>
						<div class="box-footer">
							<button type="submit" class="btn btn-success" onClick="window.location = '../../pages/cadastroSiglas/linhaServico.php'">Salvar</button>
							<button type="close" class="btn btn-danger" onClick="window.location = '../../pages/cadastroSiglas/linhaServico.php'">Cancelar</button>
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
