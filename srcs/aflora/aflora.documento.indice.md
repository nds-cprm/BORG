** this file is a stub **

Afloramento

## identificacao_projeto

comentario: Esse campo traz a informacao sobre o projeto comum a todos os dados subsequentes.
Representa a capa de uma caderneta de campo, a primeira informacao a ser preenchida no inicio de
um processo de coleta de dados.

af_estacao_afloramento_campos, id_afloramento

af_layer_campos, sureg

af_layer_campos, projeto

af_layer_campos, codigo_folha

af_layer_campos, folha

af_afloramento_campos, id_sureg

af_afloramento_campos, id_categoria

af_afloramento_campos, id_folha

## identificacao_geologo

comentario: Esse campo traz as informacoes do geologo como nome e id_geologo que referencia
a informacao de quem foi o geologo que descreveu do afloramento.

af_estacao_afloramento_campos, id_afloramento

af_afloramento_campos, id_geologo

af_layer_campos, geologo

## cadastro_estacao

comentario: Esse campo representa a primeira atividade de campo a ser feita pelo coletor da informacao.
O campo id_estacao e SERIAL sequencial gerado automaticamente e servira para referenciar e linkar a
outras tabelas. Enquanto o id_afloramento esta originalmente na tabela AF_ROCHA e faz referencia ao

id da tabela
AF_AFLORAMENTO. Outro campo importante e o registro da data referente ao cadastro
dessa informacao no campo data_cadastro.

af_estacao_afloramento_campos, id_estacao

af_estacao_afloramento_campos, id_afloramento

## toponimia

comentario: Esse campo compreende toda a informacao necessaria para localizar o afloramento

af_estacao_afloramento_campos, id_afloramento

af_afloramento_campos, toponimia

af_layer_campos, toponimia

af_layer_campos, municipio

af_layer_campos, uf

# codigo_afloramento

comentario: Esse campo e exclusivamente para o colocar o codigo do afloramento vinculado a estacao.
Represenatando assim a atividade desenvolvida na estacao.

af_estacao_afloramento_campos, id_afloramento

af_estacao_afloramento_campos, cod_afloramento

af_afloramento_campos, numero_campo

af_layer_campos, numero_campo

af_estacao_afloramento_campos, data_cadastro

## dados_espaciais

comentario: Esse campo compreende toda a informcao necessaria para o geoposicionamento do
afloramento. O campo shape representa a latitude longitude. Esse formato shape e simple feature.

af_estacao_afloramento_campos, id_afloramento

af_afloramento_campos, id_metodo_geoposicionamento

af_afloramento_campos, altitude

af_afloramento_campos, shape

af_layer_campos, metodo_geoposicionamento

af_layer_campos, shape

## caracterizacao_fisica_afloramento

comentario:Esse campo tem como objetivo descrever os aspectos fisicos do afloramento
em questao.Teoricamente o campo id_tipo_afloramento obedece a um dicionario.

af_estacao_afloramento_campos, id_afloramento

af_afloramento_campos, id_tipo_afloramento

af_layer_campos, tipo_afloramento

af_afloramento_campos, dimensao

af_afloramento_campos, descricao

af_layer_campos, descricao

af_bb_tipo_afloramento_campos, id

af_bb_tipo_afloramento_campos, nome_pt

af_bb_tipo_afloramento_campos, nome_en

## lista_rochas_afloramento

comentario:Esse campo traz a informacao dos elementos(rochas) que ocorrem no afloramento.
O campo id(identificador unico da rocha na tabela AF_ROCHA), o campo objectid assism como o id_afloramento
referencia o id da tabela AF_AFLORAMENTO. Ele representa a conclusao apos a descricao de cada rocha do afloramento

af_afloramento_campos, id

af_layer_campos, id_afloramento

af_layer_campos, rochas

af_layer_campos, objectid

af_afloramento_campos, objectid

## contato_rochas

cometario:Esse campo descreve os contatos entre as unidades descritas na lista de afloramento

af_rocha_campos, id

af_relacao_contato_campos, cod_afloramento

af_relacao_contato_campos, cod_rocha1

af_relacao_contato_campos, cod_rocha2

af_relacao_contato_campos, cod_relacao

af_relacao_contato_campos, cod_tipo_contato

## descricao_rocha

cometario:Esse campo traz a descricao das caracteristicas mais basicas para cada rocha
do afloramento em questao. Relacionamento 1:n, cada elemento(rocha) passara por esse processo
de descricao. O campo a ser preenchido vai depender da natureza da rocha, sedimentar, ignea
e metamorfica.

af_rocha_campos, id_afloramento

af_rocha_campos, id

af_rocha_campos, id_tipo_rocha

af_rocha_campos, cota

af_rocha_campos, percentagem_afloramento

af_rocha_campos, id_grau_intemperismo

af_rocha_campos, id_cor_rocha_sa

af_rocha_campos, id_cor_rocha_intemperizada

af_rocha_campos, id_geometria

af_rocha_campos, id_indice_cor

af_rocha_campos, dimensao

af_rocha_campos, id_granulacao

af_bb_indice_cor_campos, id

af_bb_indice_cor_campos, nome_pt

af_bb_indice_cor_campos, nome_en

## alteracao_rocha

comentario: Esse campo vai trazer a informacao do grau de alteracao das rochas no afloramento.

af_rocha_x_alteracao_campos, cod_rocha

af_rocha_x_alteracao_campos, cod_rx_x_alteracao

af_rocha_x_alteracao_campos, cod_tipo_alteracao

af_rocha_x_alteracao_campos, cod_intensidade_alteracao

## descricao_mineralogica

cometario:Para determinar se a rocha e do tipo ignea, metamorfica ou sedimentar o primeiro criterio e descrever a mineralogia.

af_rocha_x_minerais_campos, cod_rocha

af_rocha_x_minerais_campos, cod_rx_x_mineral

af_rocha_x_minerais_campos, cod_mineral

## descricao_textura_rocha_ignea

cometario:A segunda etapa da descricao e quanto a textura da rocha.

af_rocha_x_textura_campos, cod_rocha

af_rocha_x_textura_campos, cod_rx_x_text

af_rocha_x_textura_campos, cod_textura_ignea

### rocha_fragmentada_ignea

af_rochas_fragmentarias_x_matr_campos, cod_rocha

af_rochas_fragmentarias_x_matr_campos, percentagem_matriz_rocha

af_rochas_fragmentarias_x_matr_campos, cod_rocha_frag_matr

af_rochas_fragmentarias_x_matr_campos, cod_natureza_matriz

af_rochas_fragmentarias_x_matr_campos, cod_granulacao_matriz

af_rochas_fragmentarias_x_matr_campos, cod_relacao_fragmento_matriz

af_composicao_fragmentos_rocha_campos, cod_tipo_rocha

af_composicao_fragmentos_rocha_campos, cod_comp_frag

af_composicao_fragmentos_rocha_campos, cod_rocha_frag_matr

af_composicao_fragmentos_rocha_campos, cod_natureza_fragmento

af_composicao_fragmentos_rocha_campos, percentual

af_composicao_fragmentos_rocha_campos, tamanho_maximo

af_composicao_fragmentos_rocha_campos, tamanho_minimo

af_composicao_fragmentos_rocha_campos, cod_esfericidade

af_composicao_fragmentos_rocha_campos, cod_arredondamento

af_composicao_fragmentos_rocha_campos, forma

af_bb_natureza_fragmento_campos, cod_natureza_fragmento

af_bb_natureza_fragmento_campos, des_natureza_fragmento

af_bb_natureza_fragmento_campos, description

af_bb_relacao_fragmento_matriz_campos, cod_relacao_fragmento_matriz

af_bb_relacao_fragmento_matriz_campos, des_relacao_fragmento

af_bb_relacao_fragmento_matriz_campos, description

### rocha_enclave

af_rocha_x_enclave_campos, cod_rocha

af_rocha_x_enclave_campos, cod_rx_x_enclave

af_rocha_x_enclave_campos, cod_tipo_enclave

af_rocha_x_enclave_campos, cod_natureza_enclave

af_rocha_x_enclave_campos, des_enclave

af_bb_natureza_enclave_campos, cod_natureza_enclave

af_bb_natureza_enclave_campos, des_natureza_enclave

af_bb_natureza_enclave_campos, description

af_bb_tipo_enclave_campos, cod_tipo_enclave

af_bb_tipo_enclave_campos, des_tipo_enclave

af_bb_tipo_enclave_campos, description

## descricao_textura_rocha_sedimentar

comentario:A segunda etapa da descricao e quanto a textura da rocha.

af_rochas_sedimentares_campos, cod_rocha

af_rochas_sedimentares_campos, cod_rx_sedi

af_rochas_sedimentares_campos, cod_selecionamento

af_rochas_sedimentares_campos, cod_arredondamento

af_rochas_sedimentares_campos, cod_esfericidade

af_rochas_sedimentares_campos, cod_maturidade_textural

af_rochas_sedimentares_campos, cod_maturidade_composicional

### rocha_fragmentada_sedimentar

af_rochas_fragmentarias_x_matr_campos, cod_rocha

af_rochas_fragmentarias_x_matr_campos, cod_rocha_frag_matr

af_rochas_fragmentarias_x_matr_campos, percentagem_matriz_rocha

af_rochas_fragmentarias_x_matr_campos, cod_natureza_matriz

af_rochas_fragmentarias_x_matr_campos, cod_granulacao_matriz

af_rochas_fragmentarias_x_matr_campos, cod_relacao_fragmento_matriz

af_composicao_fragmentos_rocha_campos, cod_comp_frag

af_composicao_fragmentos_rocha_campos, cod_rocha_frag_matr

af_composicao_fragmentos_rocha_campos, cod_natureza_fragmento

af_composicao_fragmentos_rocha_campos, cod_tipo_rocha

af_composicao_fragmentos_rocha_campos, percentual

af_composicao_fragmentos_rocha_campos, tamanho_maximo

af_composicao_fragmentos_rocha_campos, tamanho_minimo

af_composicao_fragmentos_rocha_campos, cod_esfericidade

af_composicao_fragmentos_rocha_campos, cod_arredondamento

af_composicao_fragmentos_rocha_campos, forma

af_bb_natureza_fragmento_campos, cod_natureza_fragmento

af_bb_natureza_fragmento_campos, des_natureza_fragmento

af_bb_natureza_fragmento_campos, description

af_bb_relacao_fragmento_matriz_campos, cod_relacao_fragmento_matriz

af_bb_relacao_fragmento_matriz_campos, des_relacao_fragmento

af_bb_relacao_fragmento_matriz_campos, description

## descricao_textura_rocha_metamorfica

comentario:A segunda etapa da descricao e quanto a textura da rocha.

af_rocha_x_metamorfismo_campos, cod_rocha

af_rocha_x_metamorfismo_campos, cod_rx_x_metamorfismo

af_rocha_x_metamorfismo_campos, cod_tipo_metamorf

af_rocha_x_metamorfismo_campos, cod_grau_metamorf

af_rocha_x_metamorfismo_campos, cod_facies_metamorfismo

### rocha_fragmentada_metamorfica

af_rochas_fragmentarias_x_matr_campos, cod_rocha

af_rochas_fragmentarias_x_matr_campos, cod_rocha_frag_matr

af_rochas_fragmentarias_x_matr_campos, percentagem_matriz_rocha

af_rochas_fragmentarias_x_matr_campos, cod_natureza_matriz

af_rochas_fragmentarias_x_matr_campos, cod_granulacao_matriz

af_rochas_fragmentarias_x_matr_campos, cod_relacao_fragmento_matriz

af_composicao_fragmentos_rocha_campos, cod_comp_frag

af_composicao_fragmentos_rocha_campos, cod_rocha_frag_matr

af_composicao_fragmentos_rocha_campos, cod_natureza_fragmento

af_composicao_fragmentos_rocha_campos, cod_tipo_rocha

af_composicao_fragmentos_rocha_campos, percentual

af_composicao_fragmentos_rocha_campos, tamanho_maximo

af_composicao_fragmentos_rocha_campos, tamanho_minimo

af_composicao_fragmentos_rocha_campos, cod_esfericidade

af_composicao_fragmentos_rocha_campos, cod_arredondamento

af_composicao_fragmentos_rocha_campos, forma

af_bb_natureza_fragmento_campos, cod_natureza_fragmento

af_bb_natureza_fragmento_campos, des_natureza_fragmento

af_bb_natureza_fragmento_campos, description

af_bb_relacao_fragmento_matriz_campos, cod_relacao_fragmento_matriz

af_bb_relacao_fragmento_matriz_campos, des_relacao_fragmento

af_bb_relacao_fragmento_matriz_campos, description

## estruturas_rochas

comentario:Esse campo RELACIONA as estruturas das rochas seja ela em situacao de contato ou nao, primaria ou secundaria.

af_rocha_x_estruturas_campos, cod_rocha

af_rocha_x_estruturas_campos, cod_rx_x_estruturas

af_rocha_x_estruturas_campos, cod_estruturas_rx

af_rocha_x_estruturas_campos, ang_norte

af_rocha_x_estruturas_campos, mergulho_caimento

af_rocha_x_estruturas_campos, cod_sentido

af_atitude_estruturas_campos, id

af_atitude_estruturas_campos, id_afloramento

af_atitude_estruturas_campos, id_rocha

af_atitude_estruturas_campos, id_estrutura

af_atitude_estruturas_campos, nome_estrutura

af_atitude_estruturas_campos, angulo_norte

af_atitude_estruturas_campos, mergulho_caimento

af_atitude_estruturas_campos, id_sentido

af_atitude_estruturas_campos, deslocamento_m

## estrutura_sedimentar

af_indice_marca_ondulada_campos, cod_rocha

af_indice_marca_ondulada_campos, cod_ind_marca_ondu

af_indice_marca_ondulada_campos, comprimento_onda

af_indice_marca_ondulada_campos, amplitude

af_indice_marca_ondulada_campos, indice_marca_ondulada

## amostra_coletada

comentario:Esse campo relaciona as amostras coletadas, trazendo informacao sobre o codigo da rocha

af_amostras_coletadas_campos, cod_rocha

af_amostras_coletadas_campos, cod_amostra

af_amostras_coletadas_campos, cod_tipo_amostra

af_amostras_coletadas_campos, num_campo_amostra

## amostra_analise

comentario:Essse campo traz as informacoes da analise para amostra.

af_amostras_analises_campos, cod_amostra

af_amostras_analises_campos, cod_analise

af_amostras_analises_campos, cod_tipo_analise

af_bb_tipo_analise_campos, cod_tipo_analise

af_bb_tipo_analise_campos, des_tipo_analise

af_bb_tipo_analise_campos, description

af_bb_tipo_contato_campos, cod_tipo_contato

af_bb_tipo_contato_campos, desc_contato

af_bb_tipo_contato_campos, description

## multimidias

comentario:Esse campo lista as multidias para cada afloramento

af_ilustracoes_campos, cod_afloramento

af_ilustracoes_campos, cod_ilustracao

af_ilustracoes_campos, cod_tipo_ilustracao

af_ilustracoes_campos, legenda_ilustracao

af_ilustracoes_campos, name

af_ilustracoes_campos, nome_antigo

af_log_carga_ilustracoes_campos, cod_ilustracao

af_log_carga_ilustracoes_campos, nome_ilustracao

af_log_carga_ilustracoes_campos, cod_folha

af_log_carga_ilustracoes_campos, data_carga

af_log_carga_ilustracoes_campos, erro

## origem_dados

comentario:Esse campo traz informacao da origem dos dados, ou seja em qual banco
de dados a informacao se encontra.

af_layer_campos, origem

af_usuarios_campos, usuario

af_usuarios_campos, senha

af_usuarios_campos, cod_base

af_usuarios_campos, instituicao

