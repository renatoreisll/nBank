*Settings*
Documentation               Suite de testes para a realizar transações do PIX

Resource                    ${EXECDIR}/resources/base.robot
Resource                    ${EXECDIR}/resources/actions.robot

Library                     ${EXECDIR}/resources/factories/values.py

Test Setup                  Start Session
Test Teardown               End Session

*Test Cases*

Cenario 2: enviar PIX com valor válido
    [Tags]                  pix_valido

    ${pix_dados}                       Factory Enviar Pix

    Ir para a página inicial            nBank by QAninja
    Acessar tela para envio de PIX
    Preencher tela de envio do PIX      ${pix_dados}
    Clicar no botão Enviar PIX
    Validar transação                   ${pix_dados}

Cenário 3: enviar PIX com valor zerado
    [Tags]                  pix_zerado

    ${pix_dados}                        Factory Pix Zerado

    Ir para a página inicial            nBank by QAninja
    Acessar tela para envio de PIX
    Preencher tela de envio do PIX      ${pix_dados}
    Clicar no botão Enviar PIX
    Visualizar mensagem de alerta       Oops. Transferir ZERO é osso hein...

Cenário 4: enviar PIX com valor negativo
    [Tags]                  pix_negativo

    ${pix_dados}                        Factory Pix Negativo

    Ir para a página inicial            nBank by QAninja
    Acessar tela para envio de PIX
    Preencher tela de envio do PIX      ${pix_dados}
    Clicar no botão Enviar PIX
    Visualizar mensagem de alerta       Oops. Valor para PIX incorreto...