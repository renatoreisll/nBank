def factory_enviar_pix():
    pix = {
        "banco": "Nubank",
        "chave": "renato@renato.com",
        "valor": "100"
    }

    return pix

def factory_pix_zerado():
    pixzero = {
        "banco": "C6 Bank",
        "chave": "renato@reis.com",
        "valor": "0"
    }
    return pixzero

def factory_pix_negativo():
    pixzero = {
        "banco": "Next",
        "chave": "reis@renato.com",
        "valor": "-1"
    }
    return pixzero