TESTE MOBILE FLUTTER

Crie um  aplicativo em Flutter onde será exibido informações referentes a COVID-19
em todo o mundo (continentes e países).

Protótipo navegável:
https://xd.adobe.com/view/80015f2f-af77-4f9e-b759-200a2c03a1b6-d552

Dica: para baixar as imagens, ver as fontes e cores usadas, ative na barra direita o botão "View specs"
Documentação da API:

https://disease.sh/docs/

Endpoint que lista continentes e seus países:
https://disease.sh/v3/covid-19/continents?yesterday=true

Endpoint que lista os dados de um país específico:
https://disease.sh/v3/covid-19/countries/brazil?strict=true

Funcionalidades esperadas:

● Página inicial para listar todos os continentes (o ícone de cada continente pode ser obtido no protótipo). Ao clicar em um continente, exibir a página de detalhes de um continente.

● Página de detalhes de um continente, com duas abas: Aba Detalhes (com informações comsolidadas do continente) e Aba Países (com lista de países do continente).

● Página de detalhes de um país selecionado, com bandeira (URL da imagem vêm na resposta do serviço) e estatísticas de número de casos totais, ativos, recuperados e óbitos.
Informações importantes:

● Entrega do desafio: Publique o desafio no seu GitHub e nos envie o link do repositório público.

● É importante que seu projeto contenha vários commits, demonstrando como foi criado sua aplicação. 

<<<< Bônus (não é obrigatório) >>>>:

● Utilizar algum package para gerenciar estado não visto no bootcamp.

● Na Aba Países de cada continente, ter um campo de busca que permite filtrar localmente pelo nome do país, só exibindo na lista os países filtrados pelo termo buscado.
