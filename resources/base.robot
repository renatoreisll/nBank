*Settings*

Documentation               Arquivo base para o projeto.

Library                     Browser
Library                     String


*Variables*
${BASE_URL}                 https://nbank.vercel.app

*Keywords*
Start Session

    New Browser     chromium        headless=False      slowMo=00:00:01
    New Page        ${BASE_URL}

End Session

    Take Screenshot