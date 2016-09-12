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
                        <h3 class="box-title">Cadastro de Unidade</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form">
                        <div class="box-body">
                            <div class="bs-example">
                                <div class="col-md-12">
                                    <div class="form-group col-md-2">
                                        <label>Cidade</label>
                                        <select class="form-control select2" style="width: 100%;">
                                            <option selected="Selecione">Selecione</option>
                                            <option value="caxiasdosul">Caxias do Sul</option>
											<option value="saomarcos">São Marcos</option>
											<option value="passofundo">Passo Fundo</option>
											<option value="pelotas">Peotas</option>
                                        </select>
                                    </div>
									<div class="form-group col-md-7">
										<label for="sigla">Nome</label>
										<input type="text" placeholder="Nome Unidade" class="form-control" />
									</div>
                                </div>
								<div class="form-group col-md-12">
									<div class="form-group col-md-2">
                                        <label>OPM</label>
                                        <select class="form-control select2" style="width: 100%;">
                                            <option selected="Selecione">Selecione</option>
                                            <option >CRPO Caxias do Sul</option>
											<option >CRPO Vacaria</option>
											<option >CRPO Passo Fundo</option>
                                        </select>
                                    </div>
									<div class="form-group col-md-2">
										<label for="ativo">Ativo</label>
										<select class="form-control select2" id="ativo">
											<option value="Sim">Sim</option>
											<option value="Não">Não</option>
										</select>
									</div>
								</div>
							</div>
						</div>
                        <div class="box-footer">
                            <button type="submit" class="btn btn-success" >Salvar</button>
                            <button type="close" class="btn btn-danger" >Cancelar</button>
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
