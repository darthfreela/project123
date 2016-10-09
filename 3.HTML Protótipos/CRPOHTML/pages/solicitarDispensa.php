<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CRPO SERRA</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
   <?php require_once('script.php'); ?>
    <script>
        $.widget.bridge('uibutton', $.ui.button);

        //CARLOS
        $(document).ready(function(){
            $('#inputPg').attr('disabled', true);
            $('#inputNome').attr('disabled', true);
            $('#inputUnidade').attr('disabled', true);
            $('#inputIdtFunc').attr('disabled', true);
            $('#inputIdtFunc').attr('value', '014365');
            $('#inputPg').attr('value', '3º SGT');
            $('#inputNome').attr('value', 'Carlos André Antunes');
            $('#inputUnidade').attr('value', 'Base ADM');
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
                <div class="box">
                 <div class="box-header">
                    <h3 class="box-title">Solicitar Dispensas</h3>
                 </div>
                 <hr>
                  <form role="form">
                        <div class="box-body">
                            <div class="bs-example">
                                <div class="form-group">
                                    <div class="camposForm">
                                        <label class="control-label">Idt Func:</label>
                                        <input type="text" id="inputIdtFunc" placeholder="nº da identidade func.." />
                                        <label id="mensagem" style="color:red"></label>
                                    </div>
                                    <br />
                                    <div class="camposForm">
                                        <label class="control-label">Posto/Graduação:</label>
                                        <input type="text" id="inputPg"/>
                                        <label class="control-label1">Nome:</label>
                                        <input type="text" id="inputNome"/>
                                         <label class="control-label1">Unidade:</label>
                                        <input type="text" id="inputUnidade"/>
                                    </div>
                                    <br />
                                    <div>
                                         <label class="control-label">Solicitação:</label>
                                    </div>
                                    <div>     
                                        <textarea rows="4" cols="50" placeholder="Venho por meio deste, solicitar ... dias de afastamento por motivo de...."></textarea>
                                    </div>
                                    <br />
                                    <div class="camposForm">
                                        <label class="control-label">Data de Inicio:</label>
                                        <input type="date" id="inputDtInicio"/>

                                        <label class="control-label">Data de Término:</label>
                                        <input type="date" id="inputDtInicio"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </form>
                    <div class="box-footer">
                            <button id="btn" class="btn btn-success">Enviar</button>
                        </div>
                    <table id="motivos" class="table table-bordered table-striped">
                           <thead>
                               <tr>
                                   <th></th>
                                   <th>Data de Inicio</th>
                                   <th>Data de Término</th>
                                   <th>Motivo</th>
                                   <th>Situação</th>
                               </tr>
                           </thead>
                           <tbody>
                               <tr>
                                   <td>1</td>
                                   <td>04/04/2016</td>
                                   <td>04/05/2016</td>
                                   <td>Solicito 15 dias de afastamento por motivo de férias.</td>
                                   <td><i class="fa fa-check " title="Aprovado"></i></td>
                               </tr>
                               <tr>
                                   <td>2</td>
                                   <td>05/03/2016</td>
                                   <td>08/03/2016</td>
                                   <td>Solicito 3 dias de afastamento por motivo de levar meu cachorro passear.</td>
                                   <td><i class="fa fa-times " title="Negado"></i></td>
                               </tr>
                               <tr>
                                   <td>3</td>
                                   <td>05/03/2016</td>
                                   <td>08/03/2016</td>
                                   <td>Solicito 3 dias de afastamento por motivo de levar meu cachorro passear.</td>
                                   <td><i class="fa fa-circle " title="Em análise"></i></td>
                               </tr>
                           </tbody>
                    </table>
                </div> 
            </section>
        </div>
        <!-- /CORPO -->
        <div class="control-sidebar-bg"></div>
    </div>
</body>
</html>