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
        $(function () {
            $("#motivos").DataTable({
                "language": {
                    "lengthMenu": "Mostrar _MENU_ entradas",
                    "zeroRecords": "Nenhum registro encontrado",
                    "info": "Mostrando _PAGE_ de _PAGES_ páginas",
                    "infoEmpty": "Nenhum registro encontrado",
                    "infoFiltered": "(filtrado apartir de  _MAX_ registros no total)",
                    "search": "Pesquisar: "
                },
                "oLanguage": {
                    "oPaginate": {
                      "sPrevious": "Anterior",
                      "sNext": "Próximo"
                }
              }
            });
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
                        <h3 class="box-title" style="font-size: 32px;margin-left: 40%;margin-top: 20px;">Cadastro de Usuários</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <table id="motivos" class="table table-bordered table-striped" style="width: 800px;">
                            <tbody>
                                <tr>
                                    <td>Nome:</td>
                                    <td><input type="text" name="nome" size="50"></td>
                                </tr>
                                <tr>
                                	<td>E-mail:</td>
                                    <td><input type="text" name="email" size="30"></td>
                                </tr>
                                <tr>
                                	<td>Data de Nascimento:</td>
                                    <td><input type="text" name="dataNascimento" size="11" ></td>
                                </tr>
                                <tr>
                                	<td>Sexo:</td>
                                    <td><input type="radio" name="genero" value="homen" checked> Homen<br><input type="radio" name="genero" value="mulher"> Mulher<br></td>
                                </tr>
                                <tr>
                                	<td>Endereço:</td>
                                    <td><input type="text" name="endereco" size="40" ></td>
                                </tr>
                                <tr>
                                    <td>Bairro </td>
                                    <td><input type="text" name="bairro" size="40" ></td>
                                </tr>
                                <tr>
                                    <td>Cidade </td>
                                    <td><input type="text" name="cidade" size="40" ></td>
                                </tr>
                                <tr>
                                	<td>Estado </td>
                                	<td><select name="estado">
									  <option value="RS">RS</option>
									  <option value="SC">SC</option>
									</select></td>
                                </tr>
                                <tr>
                                <td>Login </td>
                                	<td><input type="text" name="login" size="40" ></td>
                                </tr>
                                <tr>
                                	<td>Senha</td>
                                	<td><input type="text" name="senha" size="40" ></td>
                                </tr>
                                <tr>
                                	<td><button class="btn btn-block btn-primary" style="width: 80px;margin-top: 10px;">Cadastrar</button></td>
                                	<td><button class="btn btn-block btn-primary" style="width: 80px;margin-top: 10px;">Limpar</button></td>
                                </tr>
                            </tbody>
                        </table>
                        
                    </div>
                </div>
            </section>
        </div>
        <!-- /CORPO -->
        <div class="control-sidebar-bg"></div>
    </div>
</body>
</html>
