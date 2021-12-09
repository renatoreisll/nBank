*** Settings ***

Documentation                   Ações customizadas do nBank

*Keywords*

Ir para a página inicial
    [Arguments]                 ${mensagem}

    Get Title                   equal               nBank by QAninja
    Wait For Elements State     css=.carousel       visible     5

Checar saldo
    [Arguments]                ${usuario}   ${saldo}
    
    Wait For Elements State     css=.navbar-item >> text= Olá ${usuario}, seu saldo é R$ ${saldo}
    ...                         visible      5

Acessar tela para envio de PIX

    Click                       text=Fazer PIX
    Wait For Elements State     
    ...                         css=.modal-card-title >> text=PIX     
    ...                         visible     5

Preencher tela de envio do PIX
    [Arguments]                 ${pix_dados}

    Select Options By           css=.field select       text        ${pix_dados}[banco]
    Fill Text                   id=chave-pix            ${pix_dados}[chave]
    Fill Text                   id=valor                ${pix_dados}[valor]

Clicar no botão Enviar PIX

    Click                       text=Enviar PIX

Validar transação
    [Arguments]                 ${pix_dados}

    ${elemento}                 Set Variable    //td[contains(text(),"${pix_dados}[chave]")]/..

    Wait for Elements State     ${elemento}     visible     5
    Get Text                    ${elemento}     contains    ${pix_dados}[valor]

Visualizar mensagem de alerta
    [Arguments]                 ${mensagem}

    ${elemento}                 Set Variable    css=.media-content

    Wait For Elements State     ${elemento}     visible     5
    Get Text                    ${elemento}     equal       ${mensagem}