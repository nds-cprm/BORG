# BORG

<b9698214-b741-11ec-a8e3-078f17c35ad5>

Base Origins. 
  
Convert all CPRM technical databases from SQL to JSON documents.

## Introdução
  
  As informações dos documentos técnicos da CPRM devem permanecer para posteridade e serem disponibilizadas para consultas e analises do público.
  
  Historicamente as informações dos documentos, tais como relatorios de campo, de analises, de projetos, etc, não são transacionais e após a consistência, não devem ser modificadas.
  
  Os documentos tem sido modelados em tabelas SQL para serem utilizados em gerenciadores de bancos de dados variados, desde o DB2, nos mainframes IBM 1130, ao PostGress e Oracle, nos computadores x86 64-bits atuais.
  
  A cada atualização de tecnologia ou de metodologia, se faz necessario a redefinição das tabelas nos modelos SQL, com criação de outros campos, sem compatibilidade ou existencia, nos documentos anteriores. Estas mudanças introduzem factoides nas informações registradas, causados por incompatibilidades, que sao atenuadas com a representação da ausencia da informação atual no documento original.
  
  O sistema de Bases Originais, BORG, viabiliza a manutenção das informações de documentos legados e atuais, atraves da conversao de modelos SQL, Standard Query Language <https://pt.wikipedia.org/wiki/SQL>, para modelos JSON, JavaScript Object Notation <https://pt.wikipedia.org/wiki/JSON>.
  
  ## Considerações
  
  No principio dos trabalhos de campo, a localização em coordenadas dos locais era realizada por instrumentos fisicos de medição, como teodolitos e niveis, e servia de referencia para as anotações de diversas descrições, amostragens e medidas. Era comum que a primeira localização fosse da descrição de algum afloramento de rochas, e que outras atividades usassem esta localização como referencia. 
  
  Quando as informações passaram a ser preservadas em meio digital, o armazenamento digital era restrito e custoso, então a base Aflora, de afloramentos, foi a principal referencia de localização para todas as outras bases.
  
  Esta dependencia se prolongou, mesmo com o advento do posicionamento por radio e do digital por satelites GPS, e da ampla disponibilidade de armazenamento digital, de Megabytes para Petabytes, pelo condicionamento à utilização dos modelos SQL.
  
  O conceito de Estação-Visita-Projeto (Mota [1]), renova a estrutura de referências geográficas, restabelecendo a lógica da hieraquia de georeferenciamento dos documentos, no espaço e no tempo.
  
  Este conceito pode ser utilizado em todos os documentos tecnicos, legados e atuais, na forma de adendos ao conteudo original.
  
  ## Metodologia
  
  Os documentos técnicos existentes nas bases SQL serão remontados, com uso de "views";
  
  As views serão exportadas como arquivos CSV, se possivel com campos entre aspas;
  
  Os arquivos CSV serão convertidos em arquivos de documentos JSON.
  
  Os arquivos JSON serão usados para criação de arquivos de dicionarios (DICN) relativos aos campos.
  
  Os arquivos DICN serão usados como modelos de consistencia das informações dos documentos;
  
  As consistencias serao utilizadas para criação de adendos aos documentos, sem modificação das informações originais;
  
  Os arquivos JSON serão convertidos para arquivos HTML, incluindo as referencias JSON;
  
  Os arquivos HTML serão disponibilizados e visualizados conforme CSS especifico para cada tipo de documento;
  
  Os arquivos JSON serao utilizados para constituir informações para metadados de referencia dos documentos;
  
  Os arquivos disponibilizados podem ser indexados e acessados por buscadores publicos.
  
  
  ## Referencias
  
  [1] Mota, 
  
  [2] https://www.json.org/json-en.html
  
  
# License

[![CC BY-NC-SA 4.0][cc-by-nc-sa-shield]][cc-by-nc-sa]

This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg
  
