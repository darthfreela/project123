class QuadroEfetivoController < ApplicationController
    class MockQuadroEfetivo
        attr_accessor :efetivoGeralCELPrevisto, :efetivoGeralTenCelPrevisto, :efetivoGeralMajPrevisto,
                             :efetivoGeral1TenPrevisto, :efetivoGeral1SgtPrevisto, :efetivoGeral2SgtPrevisto,
                            :efetivoGeral3SgtPrevisto, :efetivoGeralSdPrevisto, :efetivoGeralCapPrevisto,

                            :efetivoGeralCELExistente, :efetivoGeralTenCelExistente, :efetivoGeralMajExistente,
                            :efetivoGeral1TenExistente, :efetivoGeral1SgtExistente,
                            :efetivoGeral2SgtExistente, :efetivoGeral3SgtExistente, :efetivoGeralSdExistente,
                             :efetivoGeralCapExistente,


                            :efetivoGeralCELIndisponivel, :efetivoGeralTenCelIndisponivel, :efetivoGeralMajIndisponivel,
                            :efetivoGeral1TenIndisponivel, :efetivoGeral1SgtIndisponivel,
                            :efetivoGeral2SgtIndisponivel, :efetivoGeral3SgtIndisponivel, :efetivoGeralSdIndisponivel,
                            :efetivoGeralCapIndisponivel

        def initialize()
            #qtd prevista
            @efetivoGeralCELPrevisto = 12
            @efetivoGeralTenCelPrevisto = 12
            @efetivoGeralMajPrevisto = 12
            @efetivoGeralCapPrevisto = 12
            @efetivoGeral1TenPrevisto = 12
            @efetivoGeral1SgtPrevisto = 12
            @efetivoGeral2SgtPrevisto = 12
            @efetivoGeral3SgtPrevisto = 12
            @efetivoGeralSdPrevisto = 12

            #qtd existente
            @efetivoGeralCELExistente = 12
            @efetivoGeralTenCelExistente = 12
            @efetivoGeralMajExistente = 12
            @efetivoGeralCapExistente = 12
            @efetivoGeral1TenExistente = 12
            @efetivoGeral1SgtExistente = 12
            @efetivoGeral2SgtExistente = 12
            @efetivoGeral3SgtExistente = 12
            @efetivoGeralSdExistente= 12

             #qtd insisponivel
            @efetivoGeralCELIndisponivel = 12
            @efetivoGeralTenCelIndisponivel = 12
            @efetivoGeralMajIndisponivel = 12
            @efetivoGeralCapIndisponivel = 12
            @efetivoGeral1TenIndisponivel = 12
            @efetivoGeral1SgtIndisponivel = 12
            @efetivoGeral2SgtIndisponivel = 12
            @efetivoGeral3SgtIndisponivel = 12
            @efetivoGeralSdIndisponivel= 12
        end

            def somaEfetivoGeralPrevisto
                @efetivoGeralCELPrevisto +
                @efetivoGeralTenCelPrevisto +
                @efetivoGeralMajPrevisto +
                @efetivoGeralCapPrevisto +
                @efetivoGeral1TenPrevisto +
                @efetivoGeral1SgtPrevisto +
                @efetivoGeral2SgtPrevisto +
                @efetivoGeral3SgtPrevisto +
                @efetivoGeralSdPrevisto
            end

            def somaEfetivoGeralExistente
                @efetivoGeralCELExistente +
                @efetivoGeralTenCelExistente +
                @efetivoGeralMajExistente +
                @efetivoGeralCapExistente +
                @efetivoGeral1TenExistente +
                @efetivoGeral1SgtExistente +
                @efetivoGeral2SgtExistente +
                @efetivoGeral3SgtExistente +
                @efetivoGeralSdExistente
            end

            def somaEfetivoGeralIndisponivel
                @efetivoGeralCELIndisponivel +
                @efetivoGeralTenCelIndisponivel +
                @efetivoGeralMajIndisponivel +
                @efetivoGeralCapIndisponivel +
                @efetivoGeral1TenIndisponivel +
                @efetivoGeral1SgtIndisponivel +
                @efetivoGeral2SgtIndisponivel +
                @efetivoGeral3SgtIndisponivel +
                @efetivoGeralSdIndisponivel
            end
    end

    #MOCK USO INTERNO DF
    class MockDF
        attr_accessor :dfCELFaltas, :dfTenCelFaltas, :dfMajFaltas,
                             :df1TenFaltas, :df1SgtFaltas, :df2SgtFaltas,
                            :df3SgtFaltas, :dfSdFaltas, :dfCapFaltas,

                            :dfCELFuncaoSuperior, :dfTenCelFuncaoSuperior, :dfMajFuncaoSuperior,
                            :df1TenFuncaoSuperior, :df1SgtFuncaoSuperior,
                            :df2SgtFuncaoSuperior, :df3SgtFuncaoSuperior, :dfSdFuncaoSuperior,
                             :dfCapFuncaoSuperior,

                            :dfCELVagas, :dfTenCelVagas, :dfMajVagas,
                            :df1TenVagas, :df1SgtVagas,
                            :df2SgtVagas, :df3SgtVagas, :dfSdVagas,
                            :dfCapVagas,

                            :dfCELVagasOcupadas, :dfTenCelVagasOcupadas, :dfMajVagasOcupadas,
                            :df1TenVagasOcupadas, :df1SgtVagasOcupadas,
                            :df2SgtVagasOcupadas, :df3SgtVagasOcupadas, :dfSdVagasOcupadas,
                            :dfCapVagasOcupadas

        def initialize()
            #qtd faltas
            @dfCELFaltas = 12
            @dfTenCelFaltas = 12
            @dfMajFaltas = 12
            @dfCapFaltas = 12
            @df1TenFaltas = 12
            @df1SgtFaltas = 12
            @df2SgtFaltas = 12
            @df3SgtFaltas = 12
            @dfSdFaltas = 12

            #qtd FuncaoSuperior
            @dfCELFuncaoSuperior = 12
            @dfTenCelFuncaoSuperior = 12
            @dfMajFuncaoSuperior = 12
            @dfCapFuncaoSuperior = 12
            @df1TenFuncaoSuperior = 12
            @df1SgtFuncaoSuperior = 12
            @df2SgtFuncaoSuperior = 12
            @df3SgtFuncaoSuperior = 12
            @dfSdFuncaoSuperior= 12

             #qtd vagas
            @dfCELVagas = 12
            @dfTenCelVagas = 12
            @dfMajVagas = 12
            @dfCapVagas = 12
            @df1TenVagas = 12
            @df1SgtVagas = 12
            @df2SgtVagas = 12
            @df3SgtVagas = 12
            @dfSdVagas= 12

             #qtd vagas ocupadas
            @dfCELVagasOcupadas = 12
            @dfTenCelVagasOcupadas = 12
            @dfMajVagasOcupadas = 12
            @dfCapVagasOcupadas = 12
            @df1TenVagasOcupadas = 12
            @df1SgtVagasOcupadas = 12
            @df2SgtVagasOcupadas = 12
            @df3SgtVagasOcupadas = 12
            @dfSdVagasOcupadas= 12

        end

        def somaDfFaltas
                @dfCELFaltas +
                @dfTenCelFaltas +
                @dfMajFaltas +
                @dfCapFaltas +
                @df1TenFaltas +
                @df1SgtFaltas +
                @df2SgtFaltas +
                @df3SgtFaltas +
                @dfSdFaltas
        end

            def somaDfFuncaoSuperior
                @dfCELFuncaoSuperior +
                @dfTenCelFuncaoSuperior +
                @dfMajFuncaoSuperior +
                @dfCapFuncaoSuperior +
                @df1TenFuncaoSuperior +
                @df1SgtFuncaoSuperior +
                @df2SgtFuncaoSuperior +
                @df3SgtFuncaoSuperior +
                @dfSdFuncaoSuperior
            end

            def somaDfVagas
                @dfCELVagas +
                @dfTenCelVagas +
                @dfMajVagas +
                @dfCapVagas +
                @df1TenVagas +
                @df1SgtVagas +
                @df2SgtVagas +
                @df3SgtVagas +
                @dfSdVagas
            end

            def somaDfVagasOcupadas
                @dfCELVagasOcupadas +
                @dfTenCelVagasOcupadas +
                @dfMajVagasOcupadas +
                @dfCapVagasOcupadas +
                @df1TenVagasOcupadas +
                @df1SgtVagasOcupadas +
                @df2SgtVagasOcupadas +
                @df3SgtVagasOcupadas +
                @dfSdVagasOcupadas
            end
 end

 #mock efetivo indisponivel
 class MockIndisponivel
        attr_accessor :indisponivelCELLicenca, :indisponivelTenCelLicenca, :indisponivelMajLicenca,
                             :indisponivel1TenLicenca, :indisponivel1SgtLicenca, :indisponivel2SgtLicenca,
                            :indisponivel3SgtLicenca, :indisponivelSdLicenca, :indisponivelCapLicenca,

                            :indisponivelCELAgregado, :indisponivelTenCelAgregado, :indisponivelMajAgregado,
                            :indisponivel1TenAgregado, :indisponivel1SgtAgregado,
                            :indisponivel2SgtAgregado, :indisponivel3SgtAgregado, :indisponivelSdAgregado,
                             :indisponivelCapAgregado,

                            :indisponivelCELCurso, :indisponivelTenCelCurso, :indisponivelMajCurso,
                            :indisponivel1TenCurso, :indisponivel1SgtCurso,
                            :indisponivel2SgtCurso, :indisponivel3SgtCurso, :indisponivelSdCurso,
                            :indisponivelCapCurso,

                            :indisponivelCELOutrasDispensas, :indisponivelTenCelOutrasDispensas, :indisponivelMajOutrasDispensas,
                            :indisponivel1TenOutrasDispensas, :indisponivel1SgtOutrasDispensas,
                            :indisponivel2SgtOutrasDispensas, :indisponivel3SgtOutrasDispensas, :indisponivelSdOutrasDispensas,
                            :indisponivelCapOutrasDispensas

        def initialize()
            #qtd faltas
            @indisponivelCELLicenca = 12
            @indisponivelTenCelLicenca = 12
            @indisponivelMajLicenca = 12
            @indisponivelCapLicenca = 12
            @indisponivel1TenLicenca = 12
            @indisponivel1SgtLicenca = 12
            @indisponivel2SgtLicenca = 12
            @indisponivel3SgtLicenca = 12
            @indisponivelSdLicenca = 12

            #qtd FuncaoSuperior
            @indisponivelCELAgregado = 12
            @indisponivelTenCelAgregado = 12
            @indisponivelMajAgregado = 12
            @indisponivelCapAgregado = 12
            @indisponivel1TenAgregado = 12
            @indisponivel1SgtAgregado = 12
            @indisponivel2SgtAgregado = 12
            @indisponivel3SgtAgregado = 12
            @indisponivelSdAgregado = 12

             #qtd vagas
            @indisponivelCELCurso = 12
            @indisponivelTenCelCurso = 12
            @indisponivelMajCurso = 12
            @indisponivelCapCurso = 12
            @indisponivel1TenCurso = 12
            @indisponivel1SgtCurso = 12
            @indisponivel2SgtCurso = 12
            @indisponivel3SgtCurso = 12
            @indisponivelSdCurso= 12

             #qtd vagas ocupadas
            @indisponivelCELOutrasDispensas = 12
            @indisponivelTenCelOutrasDispensas = 12
            @indisponivelMajOutrasDispensas = 12
            @indisponivelCapOutrasDispensas = 12
            @indisponivel1TenOutrasDispensas = 12
            @indisponivel1SgtOutrasDispensas = 12
            @indisponivel2SgtOutrasDispensas = 12
            @indisponivel3SgtOutrasDispensas = 12
            @indisponivelSdOutrasDispensas= 12

        end

        def somaLicenca
                @indisponivelCELLicenca +
                @indisponivelTenCelLicenca +
                @indisponivelMajLicenca +
                @indisponivelCapLicenca +
                @indisponivel1TenLicenca +
                @indisponivel1SgtLicenca +
                @indisponivel2SgtLicenca +
                @indisponivel3SgtLicenca +
                @indisponivelSdLicenca
        end

            def somaAgregado
                @indisponivelCELAgregado +
                @indisponivelTenCelAgregado +
                @indisponivelMajAgregado +
                @indisponivelCapAgregado +
                @indisponivel1TenAgregado +
                @indisponivel1SgtAgregado +
                @indisponivel2SgtAgregado +
                @indisponivel3SgtAgregado +
                @indisponivelSdAgregado
            end

            def somaCurso
                @indisponivelCELCurso +
                @indisponivelTenCelCurso +
                @indisponivelMajCurso +
                @indisponivelCapCurso +
                @indisponivel1TenCurso +
                @indisponivel1SgtCurso +
                @indisponivel2SgtCurso +
                @indisponivel3SgtCurso +
                @indisponivelSdCurso
            end

            def somaOutrasDispensas
                @indisponivelCELOutrasDispensas +
                @indisponivelTenCelOutrasDispensas +
                @indisponivelMajOutrasDispensas +
                @indisponivelCapOutrasDispensas +
                @indisponivel1TenOutrasDispensas +
                @indisponivel1SgtOutrasDispensas +
                @indisponivel2SgtOutrasDispensas +
                @indisponivel3SgtOutrasDispensas +
                @indisponivelSdOutrasDispensas
            end
 end

  def index
        mockEg = MockQuadroEfetivo.new
        #qtd faltas
            @efetivoGeralCELPrevisto = mockEg.efetivoGeralCELPrevisto
            @efetivoGeralTenCelPrevisto = mockEg.efetivoGeralTenCelPrevisto
            @efetivoGeralMajPrevisto = mockEg.efetivoGeralMajPrevisto
            @efetivoGeralCapPrevisto = mockEg.efetivoGeralCapPrevisto
            @efetivoGeral1TenPrevisto = mockEg.efetivoGeral1TenPrevisto
            @efetivoGeral1SgtPrevisto = mockEg.efetivoGeral1SgtPrevisto
            @efetivoGeral2SgtPrevisto = mockEg.efetivoGeral2SgtPrevisto
            @efetivoGeral3SgtPrevisto = mockEg.efetivoGeral3SgtPrevisto
            @efetivoGeralSdPrevisto = mockEg.efetivoGeralSdPrevisto
            @efetivoTotalPrevisto = mockEg.somaEfetivoGeralPrevisto


            #qtd existente
            @efetivoGeralCELExistente  = mockEg.efetivoGeralCELExistente
            @efetivoGeralTenCelExistente  = mockEg.efetivoGeralTenCelExistente
            @efetivoGeralMajExistente  = mockEg.efetivoGeralMajExistente
            @efetivoGeralCapExistente = mockEg.efetivoGeralCapExistente
            @efetivoGeral1TenExistente  = mockEg.efetivoGeral1TenExistente
            @efetivoGeral1SgtExistente  = mockEg.efetivoGeral1SgtExistente
            @efetivoGeral2SgtExistente  = mockEg.efetivoGeral2SgtExistente
            @efetivoGeral3SgtExistente  = mockEg.efetivoGeral3SgtExistente
            @efetivoGeralSdExistente  = mockEg.efetivoGeralSdExistente
            @efetivoTotalExistente = mockEg.somaEfetivoGeralExistente

             #qtd insisponivel
            @efetivoGeralCELIndisponivel  = mockEg.efetivoGeralCELIndisponivel
            @efetivoGeralTenCelIndisponivel  = mockEg.efetivoGeralTenCelIndisponivel
            @efetivoGeralMajIndisponivel  = mockEg.efetivoGeralMajIndisponivel
            @efetivoGeralCapIndisponivel  = mockEg.efetivoGeralCapIndisponivel
            @efetivoGeral1TenIndisponivel  = mockEg.efetivoGeral1TenIndisponivel
            @efetivoGeral1SgtIndisponivel  = mockEg.efetivoGeral1SgtIndisponivel
            @efetivoGeral2SgtIndisponivel  = mockEg.efetivoGeral2SgtIndisponivel
            @efetivoGeral3SgtIndisponivel  = mockEg.efetivoGeral3SgtIndisponivel
            @efetivoGeralSdIndisponivel  = mockEg.efetivoGeralSdIndisponivel
            @efetivoTotalIndisponivel = mockEg.somaEfetivoGeralIndisponivel

            #TABELA DF
            mockDf = MockDF.new
            #qtd prevista
            @dfCELFaltas = mockDf.dfCELFaltas
            @dfTenCelFaltas = mockDf.dfTenCelFaltas
            @dfMajFaltas = mockDf.dfMajFaltas
            @dfCapFaltas = mockDf.dfCapFaltas
            @df1TenFaltas = mockDf.df1TenFaltas
            @df1SgtFaltas = mockDf.df1SgtFaltas
            @df2SgtFaltas = mockDf.df2SgtFaltas
            @df3SgtFaltas = mockDf.df3SgtFaltas
            @dfSdFaltas = mockDf.dfSdFaltas
            @dfTotalFaltas = mockDf.somaDfFaltas

            #qtd existente
            @dfCELFuncaoSuperior  = mockDf.dfCELFuncaoSuperior
            @dfTenCelFuncaoSuperior  = mockDf.dfTenCelFuncaoSuperior
            @dfMajFuncaoSuperior  = mockDf.dfMajFuncaoSuperior
            @dfCapFuncaoSuperior = mockDf.dfCapFuncaoSuperior
            @df1TenFuncaoSuperior  = mockDf.df1TenFuncaoSuperior
            @df1SgtFuncaoSuperior  = mockDf.df1SgtFuncaoSuperior
            @df2SgtFuncaoSuperior  = mockDf.df2SgtFuncaoSuperior
            @df3SgtFuncaoSuperior  = mockDf.df3SgtFuncaoSuperior
            @dfSdFuncaoSuperior  = mockDf.dfSdFuncaoSuperior
            @dfTotalFuncaoSuperior = mockDf.somaDfFuncaoSuperior

             #qtd insisponivel
            @dfCELVagas  = mockDf.dfCELVagas
            @dfTenCelVagas  = mockDf.dfTenCelVagas
            @dfMajVagas  = mockDf.dfMajVagas
            @dfCapVagas  = mockDf.dfCapVagas
            @df1TenVagas  = mockDf.df1TenVagas
            @df1SgtVagas  = mockDf.df1SgtVagas
            @df2SgtVagas  = mockDf.df2SgtVagas
            @df3SgtVagas  = mockDf.df3SgtVagas
            @dfSdVagas  = mockDf.dfSdVagas
            @dfTotalVagas = mockDf.somaDfVagas

             #qtd insisponivel
            @dfCELVagasOcupadas  = mockDf.dfCELVagasOcupadas
            @dfTenCelVagasOcupadas  = mockDf.dfTenCelVagasOcupadas
            @dfMajVagasOcupadas  = mockDf.dfMajVagasOcupadas
            @dfCapVagasOcupadas  = mockDf.dfCapVagasOcupadas
            @df1TenVagasOcupadas  = mockDf.df1TenVagasOcupadas
            @df1SgtVagasOcupadas  = mockDf.df1SgtVagasOcupadas
            @df2SgtVagasOcupadas  = mockDf.df2SgtVagasOcupadas
            @df3SgtVagasOcupadas  = mockDf.df3SgtVagasOcupadas
            @dfSdVagasOcupadas  = mockDf.dfSdVagasOcupadas
            @dfTotalVagasOcupadas = mockDf.somaDfVagasOcupadas

            #TABELA INDISPONIVEL
            mockIn = MockIndisponivel.new
            #qtd prevista
            @indisponivelCELLicenca = mockIn.indisponivelCELLicenca
            @indisponivelTenCelLicenca = mockIn.indisponivelTenCelLicenca
            @indisponivelMajLicenca = mockIn.indisponivelMajLicenca
            @indisponivelCapLicenca = mockIn.indisponivelCapLicenca
            @indisponivel1TenLicenca = mockIn.indisponivel1TenLicenca
            @indisponivel1SgtLicenca = mockIn.indisponivel1SgtLicenca
            @indisponivel2SgtLicenca = mockIn.indisponivel2SgtLicenca
            @indisponivel3SgtLicenca = mockIn.indisponivel3SgtLicenca
            @indisponivelSdLicenca = mockIn.indisponivelSdLicenca
            @indisponivelTotalLicenca = mockIn.somaLicenca

            #qtd existente
            @indisponivelCELAgregado  = mockIn.indisponivelCELAgregado
            @indisponivelTenCelAgregado  = mockIn.indisponivelTenCelAgregado
            @indisponivelMajAgregado  = mockIn.indisponivelMajAgregado
            @indisponivelCapAgregado = mockIn.indisponivelCapAgregado
            @indisponivel1TenAgregado  = mockIn.indisponivel1TenAgregado
            @indisponivel1SgtAgregado  = mockIn.indisponivel1SgtAgregado
            @indisponivel2SgtAgregado  = mockIn.indisponivel2SgtAgregado
            @indisponivel3SgtAgregado  = mockIn.indisponivel3SgtAgregado
            @indisponivelSdAgregado  = mockIn.indisponivelSdAgregado
            @indisponivelTotalAgregado = mockIn.somaAgregado

             #qtd insisponivel
            @indisponivelCELCurso  = mockIn.indisponivelCELCurso
            @indisponivelTenCelCurso  = mockIn.indisponivelTenCelCurso
            @indisponivelMajCurso  = mockIn.indisponivelMajCurso
            @indisponivelCapCurso  = mockIn.indisponivelCapCurso
            @indisponivel1TenCurso  = mockIn.indisponivel1TenCurso
            @indisponivel1SgtCurso  = mockIn.indisponivel1SgtCurso
            @indisponivel2SgtCurso  = mockIn.indisponivel2SgtCurso
            @indisponivel3SgtCurso  = mockIn.indisponivel3SgtCurso
            @indisponivelSdCurso  = mockIn.indisponivelSdCurso
            @indisponivelTotalCurso = mockIn.somaCurso

             #qtd insisponivel
            @indisponivelCELOutrasDispensas  = mockIn.indisponivelCELOutrasDispensas
            @indisponivelTenCelOutrasDispensas  = mockIn.indisponivelTenCelOutrasDispensas
            @indisponivelMajOutrasDispensas  = mockIn.indisponivelMajOutrasDispensas
            @indisponivelCapOutrasDispensas  = mockIn.indisponivelCapOutrasDispensas
            @indisponivel1TenOutrasDispensas  = mockIn.indisponivel1TenOutrasDispensas
            @indisponivel1SgtOutrasDispensas  = mockIn.indisponivel1SgtOutrasDispensas
            @indisponivel2SgtOutrasDispensas  = mockIn.indisponivel2SgtOutrasDispensas
            @indisponivel3SgtOutrasDispensas  = mockIn.indisponivel3SgtOutrasDispensas
            @indisponivelSdOutrasDispensas  = mockIn.indisponivelSdOutrasDispensas
            @indisponivelTotalOutrasDispensas = mockIn.somaOutrasDispensas
  end
end
