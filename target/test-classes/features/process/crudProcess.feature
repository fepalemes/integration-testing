Feature: Process CRUD

  Scenario: User save a register with post
    Given user would like to save a process
    And user informs vara with value equal "São Paulo"
    And user informs numero_processo with value equal "1"
    And user informs natureza with value equal "Cívil"
    And user informs partes with value equal "Felipe X Victor"
    And user informs urgente with value equal "S"
    And user informs arbitramento with value equal "S"
    And user informs arbitramento with value equal "S"
    And user informs assistente_social with value equal "Robson"
    And user informs data_entrada with value equal "2020-12-15"
    And user informs data_agendamento with value equal "2020-12-20"
    And user informs status with value equal "Aguardando"
    And user informs observacao with value equal "Teste 1"
    When user clicks on save button
    Then user should see "save with success" message

  Scenario: User show a register with get
    Given user would like to save a process
    And user informs vara with value equal "São Paulo"
    And user informs numero_processo with value equal "1"
    And user informs natureza with value equal "Cívil"
    And user informs partes with value equal "Felipe X Victor"
    And user informs urgente with value equal "S"
    And user informs arbitramento with value equal "S"
    And user informs arbitramento with value equal "S"
    And user informs assistente_social with value equal "Robson"
    And user informs data_entrada with value equal "2020-12-15"
    And user informs data_agendamento with value equal "2020-12-20"
    And user informs status with value equal "Aguardando"
    And user informs observacao with value equal "Teste 1"
    When user clicks on save button
    And user wants to see process information
    Then user should see "success" message
    And user should see partes with value "Felipe X Victor"
    And user should see numero_processo with value "1"

  Scenario: User update a register with put
    Given user would like to save a process
    And user informs vara with value equal "São Paulo"
    And user informs numero_processo with value equal "1"
    And user informs natureza with value equal "Cívil"
    And user informs partes with value equal "Felipe X Victor"
    And user informs urgente with value equal "S"
    And user informs arbitramento with value equal "S"
    And user informs arbitramento with value equal "S"
    And user informs assistente_social with value equal "Robson"
    And user informs data_entrada with value equal "2020-12-15"
    And user informs data_agendamento with value equal "2020-12-20"
    And user informs status with value equal "Aguardando"
    And user informs observacao with value equal "Teste 1"
    When user clicks on save button
    And user informs vara with value equal "São Paulo"
    And user informs numero_processo with value equal "2"
    And user informs natureza with value equal "Cívil"
    And user informs partes with value equal "Felipe X Victor"
    And user informs urgente with value equal "S"
    And user informs arbitramento with value equal "S"
    And user informs arbitramento with value equal "S"
    And user informs assistente_social with value equal "Robson"
    And user informs data_entrada with value equal "2020-12-15"
    And user informs data_agendamento with value equal "2020-12-20"
    And user informs status with value equal "Aguardando"
    And user informs observacao with value equal "Teste 1"
    And user clicks on save button again
    And user wants to see process information
    Then user should see "success" message
    And user should see numero_processo with value "2"

  Scenario: User delete a register with delete
    Given user would like to save a process
    And user informs vara with value equal "São Paulo"
    And user informs numero_processo with value equal "3"
    And user informs natureza with value equal "Cívil"
    And user informs partes with value equal "Felipe X Victor"
    And user informs urgente with value equal "S"
    And user informs arbitramento with value equal "S"
    And user informs arbitramento with value equal "S"
    And user informs assistente_social with value equal "Robson"
    And user informs data_entrada with value equal "2020-12-15"
    And user informs data_agendamento with value equal "2020-12-20"
    And user informs status with value equal "Concluído"
    And user informs observacao with value equal "Teste 2"
    When user clicks on save button
    And user clicks on delete button
    Then user should see "no content" message