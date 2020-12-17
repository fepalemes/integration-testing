#language: pt

Funcionalidade: Process CRUD

  Cenário: Usuario salva um processo via POST
    Dado usuario gostaria de salvar um processo
    E usuario informa vara com valor igual "Rio de Janeiro"
    E usuario informa numero_processo com valor igual "50"
    E usuario informa natureza com valor igual "Criminal"
    E usuario informa partes com valor igual "João X Maria"
    E usuario informa urgente com valor igual "N"
    E usuario informa arbitramento com valor igual "S"
    E usuario informa assistente_social com valor igual "Marcos"
    E usuario informa data_entrada com valor igual "2020-12-17"
    E usuario informa data_saida com valor igual "2021-01-02"
    E usuario informa data_agendamento com valor igual "2020-12-20"
    E usuario informa status com valor igual "Concluído"
    E usuario informa observacao com valor igual "Teste via POST"
    Quando usuario clica em salvar
    Então usuario devera ver a mensagem de "Salvo com sucesso"


  Cenário: Usuario visualiza processo via GET apos salvar o mesmo via POST
    Dado usuario deseja ver as informacoes do processo
    E usuario informa vara com valor igual "Mato Grosso"
    E usuario informa numero_processo com valor igual "0113"
    E usuario informa natureza com valor igual "Cívil"
    E usuario informa partes com valor igual "Amelia X Jose"
    E usuario informa urgente com valor igual "S"
    E usuario informa arbitramento com valor igual "S"
    E usuario informa assistente_social com valor igual "Erik"
    E usuario informa data_entrada com valor igual "2020-12-16"
    E usuario informa data_saida com valor igual "2021-03-02"
    E usuario informa data_agendamento com valor igual "2020-12-22"
    E usuario informa status com valor igual "Aguardando"
    E usuario informa observacao com valor igual "Teste via GET"
    Quando usuario clica em salvar
    E usuario deseja ver as informacoes do processo
    Então usuario devera ver a mensagem de "Sucesso"
    E usuario devera ver partes com valor "Amelia X Jose"
    E usuario devera ver numero_processo com valor "0113"


  Cenário: Usuario atualiza um processo via PUT apos salvar o mesmo via POST
    Dado usuario gostaria de salvar um processo
    E usuario informa vara com valor igual "Pernambuco"
    E usuario informa numero_processo com valor igual "0130"
    E usuario informa natureza com valor igual "Cívil"
    E usuario informa partes com valor igual "Silvia X Fabiano"
    E usuario informa urgente com valor igual "S"
    E usuario informa arbitramento com valor igual "N"
    E usuario informa assistente_social com valor igual "Francisco"
    E usuario informa data_entrada com valor igual "2020-12-17"
    E usuario informa data_agendamento com valor igual "2020-12-30"
    E usuario informa status com valor igual "Aguardando"
    E usuario informa observacao com valor igual "Teste via PUT"
    Quando usuario clica em salvar
    E usuario informa vara com valor igual "São Paulo"
    E usuario informa numero_processo com valor igual "0130"
    E usuario informa natureza com valor igual "Cívil"
    E usuario informa partes com valor igual "Thais X Felipe"
    E usuario informa urgente com valor igual "N"
    E usuario informa arbitramento com valor igual "S"
    E usuario informa assistente_social com valor igual "Marcos"
    E usuario informa data_entrada com valor igual "2020-12-15"
    E usuario informa data_agendamento com valor igual "2020-12-20"
    E usuario informa status com valor igual "Concluído"
    E usuario informa observacao com valor igual "Teste via PUT OK"
    E usuario clica no botao salvar novamente
    E usuario deseja ver as informacoes do processo
    Então usuario devera ver a mensagem de "Sucesso"
    E usuario devera ver numero_processo com valor "0130"

  Cenário: Usuario deleta um processo via DELETE apos salvar o mesmo via POST
    Dado usuario gostaria de salvar um processo
    E usuario informa vara com valor igual "São Carlos"
    E usuario informa numero_processo com valor igual "0212"
    E usuario informa natureza com valor igual "Criminal"
    E usuario informa partes com valor igual "Barbosa X Pachecho"
    E usuario informa urgente com valor igual "S"
    E usuario informa arbitramento com valor igual "N"
    E usuario informa assistente_social com valor igual "Da Silva"
    E usuario informa data_entrada com valor igual "2020-12-18"
    E usuario informa data_agendamento com valor igual "2020-12-25"
    E usuario informa status com valor igual "Concluído"
    E usuario informa observacao com valor igual "Teste DELETE"
    Quando usuario clica em salvar
    E usuario clica no botao deletar
    Então usuario devera ver a mensagem de "Sem conteudo"