*Settings*
Documentation               Suite de testes para a verificação do saldo

Resource                    ${EXECDIR}/resources/base.robot
Resource                    ${EXECDIR}/resources/actions.robot

Test Setup                  Start Session
Test Teardown               End Session

*Test Cases*

Cenario 1: verificar saldo
    [Tags]                  saldo

    Ir para a página inicial            nBank by QAninja
    Checar saldo                        Papito      1000