<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CRPO SERRA</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
   <?php require_once('script.php'); ?>
    <script>
        $(function () {
            $(".select2").select2();				
		
			$('body').on('click', '.list-group .list-group-item', function () {
                $(this).toggleClass('active');
            });
            $('.dual-list .selector').click(function () {
                var $checkBox = $(this);
                if (!$checkBox.hasClass('selected')) {
                    $checkBox.addClass('selected').closest('.well').find('ul li:not(.active)').addClass('active');
                    $checkBox.children('i').removeClass('glyphicon-unchecked').addClass('glyphicon-check');
                } else {
                    $checkBox.removeClass('selected').closest('.well').find('ul li.active').removeClass('active');
                    $checkBox.children('i').removeClass('glyphicon-check').addClass('glyphicon-unchecked');
                }
            });
            $('[name="SearchDualList"]').keyup(function (e) {
                var code = e.keyCode || e.which;
                if (code == '9') return;
                if (code == '27') $(this).val(null);
                var $rows = $(this).closest('.dual-list').find('.list-group li');
                var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();
                $rows.show().filter(function () {
                    var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
                    return !~text.indexOf(val);
                }).hide();
            });	
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
                        <h3 class="box-title">Cadastro de Escala</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form">
                        <div class="box-body">
                            <div class="bs-example">
                                <div class="col-md-12">
                                    <div class="form-group col-md-6">
                                        <label>Nome</label>
                                        <input type="text" placeholder="Nome da Escala" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group col-md-6">
                                        <label>Tipo de Serviço</label>
                                        <select class="form-control select2" style="width: 100%;">
                                            <option selected="Selecione">Selecione</option>
                                            <option value="AG">Auxiliar a Guarda</option>
                                            <option value="MT">Motorista</option>
                                            <option value="OP">Oficial de permanência </option>
                                            <option value="PG">Permamência e guarda</option>
                                            <option value="RGQ">Referência guarda do quartel</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group col-md-2">
                                        <label>Data</label>
                                        <input class="form-control" type="date" id="dtaIni" />
                                    </div>
                                    <div class="form-group col-md-2">
                                        <label>Hora Inicial</label>
                                        <input class="form-control" type="time" id="hrIni" />
                                    </div>
                                    <div style="float: left">
                                        <label>
                                            <br>
                                        </label>
                                        <label class="form-control" style="border: 0px">a</label>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <label>Hora Final</label>
                                        <input class="form-control" type="time" id="hrFim" />
                                    </div>
                                </div>
                                <div class="col-md-12">
									<div class="form-group col-md-2">
										<label>Usuários</label>
										<div class="container">
											<br />
											<div class="dual-list list-left col-md-5">
												<div class="well text-right">
													<div class="row">
														<div class="col-md-10">
															<div class="input-group">
																<span class="input-group-addon glyphicon glyphicon-search"></span>
																<input type="text" name="SearchDualList" class="form-control" placeholder="Pesquisar" />
															</div>
														</div>
														<div class="col-md-2">
															<div class="btn-group">
																<a class="btn btn-default selector" title="select all"><i class="glyphicon glyphicon-unchecked"></i></a>
															</div>
														</div>
													</div>
													<ul class="list-group">
														<li class="list-group-item">João da Silva Di no Sauro</li>
														<li class="list-group-item">João da Silva Tira no Sauro</li>
														<li class="list-group-item">Caim dos Santos de Jesus</li>
														<li class="list-group-item">Sauro da Silva</li>
														<li class="list-group-item">Tira  no Sauro</li>														
													</ul>
												</div>
											</div>
											<div class="list-arrows col-md-1 text-center" style=" width: 37px; margin-left: -26px;">
												<button class="btn btn-default btn-sm move-left">
													<span class="glyphicon glyphicon-chevron-left"></span>
												</button>
												<button class="btn btn-default btn-sm move-right">
													<span class="glyphicon glyphicon-chevron-right"></span>
												</button>
											</div>
											<div class="dual-list list-right col-md-5">
												<div class="well">
													<div class="row">
														<div class="col-md-2">
															<div class="btn-group">
																<a class="btn btn-default selector" title="select all"><i class="glyphicon glyphicon-unchecked"></i></a>
															</div>
														</div>
														<div class="col-md-10">
															<div class="input-group">
																<input type="text" name="SearchDualList" class="form-control" placeholder="Pesquisar" />
																<span class="input-group-addon glyphicon glyphicon-search"></span>
															</div>
														</div>
													</div>
													<ul class="list-group">
														<li class="list-group-item">Dos Santos Caim  de Jesus</li>
														<li class="list-group-item">Sauron The One Ring</li>
														<li class="list-group-item">Capitão Nascimento</li>
														<li class="list-group-item">Aspira de Candido</li>
														<li class="list-group-item">Zero Dois Gaylord</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
                            </div>
                        </div>
                        <div class="box-footer">
                            <button type="submit" class="btn btn-success" onclick="window.location = '../../pages/escalaServico/listaEscala.php'">Salvar</button>
                            <button type="close" class="btn btn-danger" onclick="window.location = '../../pages/escalaServico/listaEscala.php'">Cancelar</button>
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
