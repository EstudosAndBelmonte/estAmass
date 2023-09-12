## instalação do amass no computador
apt install amass

## A flag ‘-list’ apresenta as integrações disponíveis:
amass enum -list

###########
## INTEL ##
###################################################################################
## Subcomando que recolhe informação ‘horizontal’ do alvo — domínios associados, ##
## recursos associados, etc. Usado para ‘expandir’ a superfície de ataque:       ##
## para descobrir um dominio ou extensões de uma empresa utilizamos um comando.  ##
## Por exemplo o whois que nos mostra todos os IP's                              ##
## -org é a organização que quer dar uma olhada.                                 ##
###################################################################################
amass intel .org "Facebook Inc." whois
##############################################################################################################
## para poder retornar os parametros podemos utilizar o comando ASN, onde podemos descobrir o que retornar. ##
## quando colocado o ip na frente ele retorna o IP e o dominio.                                             ##
## Determinar outros domínios usando o ASN:                                                                 ##
##############################################################################################################
amass intel -asn 54115 -ip
###################################
## Usando IP e certificados SSL: ##
###################################
amass intel -active -cidr 0.0.0.0/0



##########
## ENUM ##
############################################################################################################################
## Subcomando que recolhe informação ‘vertical’ do alvo — subdomínios, IPs, hosts, etc. Usado para ‘aprofundar’ a         ##  
## superfície de ataque.                                                                                                  ##  
## O enum é o modo de busca de dominio e de scam de cada dominio.                                                         ##  
## o modo enum tem dois modos: passsivo e ativo.                                                                          ##
## o modo PASSIVE: desabilita toda resolução de DNS, ou seja retorna todos os dominios inclusive os que não estão ativos. ##
############################################################################################################################
amass enum -src -passive -d domain.com
##########################################################################
## Pesquisa parcialmente passive (com resolução mas sem tocar no alvo): ##
##########################################################################
amass enum -src -ip -d domain.com
############################################################################################################################
## o modo ACTIVE : nos mostra informações um pouco mais agrecivas, mostrando informações que pode ser mais intima do site ##
############################################################################################################################
amass enum -active -d domain.com -cidr 0.0.0.0/0 -asn asnumber
############################################################################################################################
## ter todos os dominios futuramente é bom, pois pode mostrar as vunerabilidade do alvo                                   ##
## -dir é um comando para criar um diretorio com as informações                                                           ##
## -d é para falar qual o dominio.                                                                                        ##
## -src nos mostra qual banco de dados está essa informação                                                               ##
## -brute é uma maneira de o sistema realizar uma busca mais bruta (Trabalho de força bruta)                              ##
############################################################################################################################
amass enum -d bancocn.com -dir bancocn
#################################################################
## trabalho de força bruta enviando o resultado para uma pasta ##
#################################################################
amass enum -d facebook.com -dir facebook -passive -brute -w /usr/share/wordList/wfuzz/general/

#########
## VIZ ##
##############################################################################
## Visualização de resultados em forma gráfica. Até 1000 resultados ‘d3’ é  ##
## uma boa opção. Para mais usar gexf ou maltego                            ##
## modo de visualização de um resultado de um scan.                         ##
## Podemos esportar um arquivo de analise para ser analisado pelo -maltego  ##
## -d3 é o forma que vai gerar o documento que queremos                     ##
##############################################################################
amass viz -dir facebook -d3

###########
## TRACK ##
##################################################################################
## Apresenta as diferenças entre duas explorações feitas em periódos diferentes ##
## mapeia os ips e informação do alvo de acordo com as informações capituradas. ##
## -last são as ultima informações capituradas.                                 ##
##################################################################################
amass track -dir bancocn -d bancocn.com -last 2


########
## DB ##
#####################################################################################
## Gerenciar os bancos de dados gráficos que armazenam os resultados da enumeração ##
## Subcomando de apresentação de resultados recolhidos                             ##
## -show : mostra os bancos de dados.                                              ##
#####################################################################################
amass db -show

#####################################################################################
## -names : mostra o nome das tabelas e banco.                                     ##
#####################################################################################
amass db -names

#####################################################################################
## -summary : lista de bancos.                                                     ##
#####################################################################################
amass db -summary
