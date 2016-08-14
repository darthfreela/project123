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
			"name": "João da Silva Di no Sauro",
			"grad": "MAJ QOEM"
		  },
		  "987654321": {
			"id" : "987654321",
			"name": "João da Silva Tira no Sauro",
			"grad": "CAP QOEM"
		  },
			"666666666": {
			"id" : "666666666",
			"name": "Caim dos Santos de Jesus",
			"grad": "1° SGT QPM-1"
		  },
			"000000000": {
			"id" : "000000000",
			"name": "Abel Pereira Silva",
			"grad": "1 SGT QOM-1"
		  }
		};
		
		var cargoData = {
			  "1": {
				"id" : "1",
				"cargo": "TEN CEL QOEM",
				"funcao" : "CH DO EM DO CRPO SERRA",
				"situacao" : "Vago",
				"ocupante": "",
				"motivoIndisponibilidade" : ""
			  },
			  "2": {
				"id" : "2",
				"cargo": "MAJ QOEM",
				"funcao" : "CHEFE DO P1",
				"situacao" : "Ocupado",
				"ocupante": "José da Silva Rex",
				"motivoIndisponibilidade" : "Férias"
			  },
				"3": {
				"id" : "3",
				"cargo": "MAJ QOEM",
				"funcao" : "CHEFE DO P4",
				"situacao" : "Ocupado",
				"ocupante": "José da Silva Rex",
				"motivoIndisponibilidade" : "Férias"
			  },
				"4": {
				"id" : "4",
				"cargo": "TEN CEL QOEM",
				"funcao" : "1° TEN QTPM",
				"situacao" : "Vago",
				"ocupante": "",
				"motivoIndisponibilidade" : ""
			  }
			}
		
		function addIdFuncOptions(){
			var element = document.getElementById("idFunc");
			$.each(funcData, function() {
				var option = document.createElement("option");
				option.text = this.id;
				option.value = this.id;
				element.add(option);
			});
			$("#idFunc").change();
		}
		
		function addCargoDisponivelOptions(){
			var element = document.getElementById("cargoDisponivel");
			$.each(cargoData, function() {
				var option = document.createElement("option");
				option.text = this.id;
				option.value = this.id;
				element.add(option);
			});
			$("#cargoDisponivel").change();
		}
		
		function listnerIdFunc(){
			$("#idFunc").change(function(){
				$("#nomeServidor").val(funcData[this.value].name);
				$("#postoServidor").val(funcData[this.value].grad);
			});		
		}
		
		function listnerCargoDisponivel(){
			$("#cargoDisponivel").change(function(){
				$("#situacaoCargo").val(cargoData[this.value].situacao);
				$("#ocupanteCargo").val(cargoData[this.value].ocupante);			
				$("#motivoIndisponibilidade").val(cargoData[this.value].motivoIndisponibilidade);
				$("#funcaoSuperiorExercida").val(cargoData[this.value].funcao);
			});
		}
		
		$(document).ready(function() {
			listnerIdFunc();
			listnerCargoDisponivel();
			addIdFuncOptions();
			addCargoDisponivelOptions();
			$('select').select2();
			$("#periodo").daterangepicker();
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
						<h3 class="box-title">Realizar Substituição Temporária</h3>
					</div>
					<form role="form">
						<div class="box-body">
							<div class="row">
								<div class="col-lg-2">
									<div class="form-group">
										<label for="idFunc">ID Func. Substituido</label>
										<select class="form-control" id="idFunc"></select>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">
										<label for="nomeServidor">Nome do Servidor Substituido</label>
										<input type="text" class="form-control" id="nomeServidor" placeholder="Nome do Servidor" disabled>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<label for="postoServidor">Posto Grad.</label>
										<input type="text" class="form-control" id="postoServidor" placeholder="Posto Grad." disabled>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<label for="postoServidor">Função</label>
										<input type="text" class="form-control" id="postoServidor" placeholder="Posto Grad." disabled>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-2">
									<div class="form-group">
										<label for="idFunc">ID Func. Substituto</label>
										<select class="form-control" id="idFunc"></select>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">
										<label for="nomeServidor">Nome do Servidor Substituto</label>
										<input type="text" class="form-control" id="nomeServidor" placeholder="Nome do Servidor" disabled>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<label for="postoServidor">Posto Grad.</label>
										<input type="text" class="form-control" id="postoServidor" placeholder="Posto Grad." disabled>
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<label for="postoServidor">Função</label>
										<input type="text" class="form-control" id="postoServidor" placeholder="Posto Grad." disabled>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-3">
									<div class="form-group">
										<label for="motivoIndisponibilidade">Motivo de Indisponibilidade</label>
										<input type="text" class="form-control" id="motivoIndisponibilidade" placeholder="Motivo de Indisponibilidade" disabled>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-2">
									<div class="form-group">
										<label for="periodo">Período</label>
										<input type="date"> à <input type="date">
									</div>
								</div>
								<div class="col-lg-2">
									<div class="form-group">
										<label for="nrBoletim">Nrº Boletim</label>
										<input type="number" class="form-control" id="nrBoletim" placeholder="123456789">
									</div>
								</div>

							</div>
						</div>
						<div class="box-footer">
							<button type="button" class="btn btn-success" onClick="window.location = '../../pages/substituicaoTemporaria/list.php'">Salvar</button>
							<button type="button" class="btn btn-danger" onClick="window.location = '../../pages/substituicaoTemporaria/list.php'">Cancelar</button>
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
