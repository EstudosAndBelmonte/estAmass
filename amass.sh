## instalação do amass no computador
apt install amass

###########
## INTEL ##
##################################################################################
## para descobrir um dominio ou extensões de uma empresa utilizamos um comando. ##
## Por exemplo o whois que nos mostra todos os IP's                             ##
## -org é a organização que quer dar uma olhada.                                ##
##################################################################################
amass intel .org "Facebook Inc." whois
##############################################################################################################
## para poder retornar os parametros podemos utilizar o comando ASN, onde podemos descobrir o que retornar. ##
## quando colocado o ip na frente ele retorna o IP e o dominio.                                             ##
##############################################################################################################
amass intel -asn 54115 -ip

##########
## ENUM ##
############################################################################################################################
## O enum é o modo de busca de dominio e de scam de cada dominio.                                                         ##  
## o modo enum tem dois modos: passsivo e ativo.                                                                          ##
## o modo PASSIVE: desabilita toda resolução de DNS, ou seja retorna todos os dominios inclusive os que não estão ativos. ##
## o modo ACTIVE : nos mostra informações um pouco mais agrecivas, mostrando informações que pode ser mais intima do site ##
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
## modo de visualização de um resultado de um scan.                         ##
## Podemos esportar um arquivo de analise para ser analisado pelo -maltego  ##
## -d3 é o forma que vai gerar o documento que queremos                     ##
##############################################################################
amass viz -dir facebook -d3

###########
## TRACK ##
##################################################################################
## mapeia os ips e informação do alvo de acordo com as informações capituradas. ##
## -last são as ultima informações capituradas.                                 ##
##################################################################################
amass track -dir bancocn -d bancocn.com -last 2
