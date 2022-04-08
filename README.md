# BORG

<b9698214-b741-11ec-a8e3-078f17c35ad5>

Base Origins. 
  
Convert all CPRM technical databases from SQL to JSON documents.

## Introdução
  
  As informações dos documentos tecnicos da CPRM não são transacionais, após a consistência, devem permanecer inalteradas por toda posteridade, e disponibilizadas para consultas e analises do público.
  
  Historicamente as informações dos documentos, tais como relatorios de campo, de analises, de projetos, etc, tem sido modelados em tabelas SQL para serem utilizados em gerenciadores de bancos de dados variados, desde o DB2, nos mainframes IBM 1130, ao PostGress e Oracle, nos computadores x86 64bits atuais.
  
  A cada atualização de tecnologia ou de metodologia, se faz necessario a redefinição das tabelas nos modelos SQL, com criação de outros campos, sem compatibilidade ou existencia, nos documentos anteriores. Estas mudanças introduzem factoides nas informações registradas, causados por incompatibilidades, que sao atenuadas com a representação da ausencia da informação atual no documento original.
  
  O sistema de Bases Originais, BORG, viabiliza a manutenção das informações de documentos legados e atuais, atraves da conversao de modelos SQL, Standard Query Language <https://pt.wikipedia.org/wiki/SQL>, para modelos JSON, JavaScript Object Notation <https://pt.wikipedia.org/wiki/JSON>.
  
  
  ## Referencias
  
  https://www.json.org/json-en.html
  
  
# License

[![CC BY-NC-SA 4.0][cc-by-nc-sa-shield]][cc-by-nc-sa]

This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg
  
