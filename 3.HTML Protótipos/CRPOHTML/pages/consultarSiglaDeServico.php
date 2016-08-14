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
                        <h3 class="box-title">Consultar Sigla de Linha de Serviço</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div>
                            <button class="btn btn-block btn-primary" onClick="window.location = '../../pages/cadastroSiglas/siglasServico.php'">Novo</button>
                        </div>
                        </br>
                       
                        <table id="motivos" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Sigla</th>
                                    <th>Nome</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>OF</td>
                                    <td>Oficial Supervisor</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>FR</td>
                                    <td>Férias e/ou Feriado</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>DT</td>
                                    <td>Detido com Prejuizo</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>LS</td>
                                    <td>Licença Saúde - DCD</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>LE</td>
                                    <td>Licença Especial</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>DV</td>
                                    <td>Diária de Viagem</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>PR</td>
                                    <td>Preso</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>LT</td>
                                    <td>Luto</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>LL</td>
                                    <td>Licença Lactante</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>DS</td>
                                    <td>Dispensa do Serviço</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>11</td>
                                    <td>IN</td>
                                    <td>Instrução</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>12</td>
                                    <td>NP</td>
                                    <td>Núpcias</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>13</td>
                                    <td>LI</td>
                                    <td>Licença Interesse Particular</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>14</td>
                                    <td>JM</td>
                                    <td>Justiça Militar</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>15</td>
                                    <td>LAA</td>
                                    <td>Licença Aguardando Aposentadoria</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>16</td>
                                    <td>CR</td>
                                    <td>Curso</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>17</td>
                                    <td>LSF</td>
                                    <td>Licença Saúde Pessoa da Família - LTSPF</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>18</td>
                                    <td>TR</td>
                                    <td>Trânsito</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>19</td>
                                    <td>LCE</td>
                                    <td>Licença para Concorrer a Cargo Eletivo</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>20</td>
                                    <td>AP</td>
                                    <td>Apresentação</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>21</td>
                                    <td>FNJ</td>
                                    <td>Falta não Justificada</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>22</td>
                                    <td>INS</td>
                                    <td>Instalação</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>23</td>
                                    <td>LAE</td>
                                    <td>Licença para acompanhar Esposa</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>24</td>
                                    <td>LP</td>
                                    <td>Licença Paternidade</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>25</td>
                                    <td>SE</td>
                                    <td>Sem efetividade - excluído, licenciado, falecido, desertor, desligado</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>26</td>
                                    <td>LSG</td>
                                    <td>Licença Gestante</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>27</td>
                                    <td>FJ</td>
                                    <td>Falta Justificada</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>28</td>
                                    <td>OPG</td>
                                    <td>Operação Golfinho</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>29</td>
                                    <td>OSV</td>
                                    <td>Operação Salva Vidas</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>30</td>
                                    <td>FNJ</td>
                                    <td>Falta não justificada</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>31</td>
                                    <td>CH</td>
                                    <td>Complemento de Carga Horária</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>32</td>
                                    <td>F</td>
                                    <td>Folga</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>33</td>
                                    <td>AG</td>
                                    <td>Agregado</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>34</td>
                                    <td>OS</td>
                                    <td>Oficial de Serviço - SOBREAVISO</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>35</td>
                                    <td>MS</td>
                                    <td>Motorista de Sobreaviso</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>36</td>
                                    <td>HE</td>
                                    <td>Hora Extraordinária</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                                <tr>
                                    <td>37</td>
                                    <td>CH</td>
                                    <td>Complemento de Carga Horária</td>
                                    <td><a class="btn btn-warning"><i class="fa fa-edit"></i>Editar</a></td>
                                    <td><a class="btn btn-danger"><i class="fa fa-close "></i>Excluir</a></td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th></th>
                                    <th>Sigla</th>
                                    <th>Nome</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </tfoot>
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
