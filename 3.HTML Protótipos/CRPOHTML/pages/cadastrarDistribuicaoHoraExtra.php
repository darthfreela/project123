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
		var funcData = {
		  "123456789": {
			"id" : "123456789",
			"cidade": "Caxias do Sul",
			"unidade": "Parque dos Macaquinhos"
		  },
		  "987654321": {
			"id" : "987654321",
			"cidade": "Caxias do Sul",
			"unidade": "Parque Cinquentenário"
		  },
			"666666666": {
			"id" : "666666666",
			"cidade": "Bento Gonçalves",
			"unidade": "Praça do Vinho"
		  },
			"000000000": {
			"id" : "000000000",
			"cidade": "Farroupilha",
			"unidade": "Praça da Santa"
		  }
		};
		
		function addIdFuncOptions(){
			var element = document.getElementById("idUnidade");
			$.each(funcData, function() {
				var option = document.createElement("option");
				option.text = this.id;
				option.value = this.id;
				element.add(option);
			});
			$("#idUnidade").change();
		}
		
		function listnerIdFunc(){
			$("#idUnidade").change(function(){
				$("#cidade").val(funcData[this.value].cidade);
				$("#unidade").val(funcData[this.value].unidade);
			});		
		}
		
		$(document).ready(function() {
			listnerIdFunc();
			addIdFuncOptions();
			$('select').select2();
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
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">Criar Distribuição de Horas Extras</h3>
					</div>
					<form role="form">
						<div class="box-body">
							<div class="row">
								<div class="col-lg-2">
									<div class="form-group">
										<label for="idUnidade">ID Unidade</label>
										<select class="form-control" id="idUnidade"></select>
									</div>
								</div>
								<div class="col-lg-3">
									<div class="form-group">
										<label for="unidade">Unidade</label>
										<input type="text" class="form-control" id="unidade" placeholder="Unidade" disabled>
									</div>
								</div>
								<div class="col-lg-3">
									<div class="form-group">
										<label for="cidade">Cidade</label>
										<input type="text" class="form-control" id="cidade" placeholder="Cidade" disabled>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<label for="numeroHoras">N° de Horas</label>
										<input type="text" class="form-control" id="numeroHoras" placeholder="N° de Horas">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-2">
									<div class="form-group">
                                        <label class="control-label">Data de Inicio:</label>
                                        <input type="date" id="inputDtInicio"/>
                                    </div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">	
                                        <label class="control-label">Data de Término:</label>
                                        <input type="date" id="inputDtInicio"/>
                                    </div>
								</div>
							</div>
						</div>
						<div class="box-footer">
					<button type="button" class="btn btn-success" onClick="window.location = 'consultarDistribuicaoHoraExtra.php'">Salvar</button>
							<button type="button" class="btn btn-danger" onClick="window.location = 'consultarDistribuicaoHoraExtra.php'">Cancelar</button>
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
