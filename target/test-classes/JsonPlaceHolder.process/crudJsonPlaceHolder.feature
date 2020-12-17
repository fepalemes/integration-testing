#language: pt

Funcionalidade: Json Placeholder CRUD

  Background:
    Dado user would like to see all json placeholder

  Scenario: User save a register with post
    When usuario devera ver a mensagem de "success"

  Scenario Outline: User save a register with post
    When user clicks on find button
    Then usuario devera ver a mensagem de "<response>"

    Examples:
      |response  |
      |success   |