# AMASS - Comando para buscar informação #

Para descobrir um dominio ou extensões de uma empresa utilizamos um comando.
Por exemplo o whois que nos mostra todos os IP's
-org é a organização que quer dar uma olhada.

### INTEL ###
Para descobrir um dominio ou extensões de uma empresa utilizamos um comando.Por exemplo:
-whois: nos mostra todos os IP's                            
-org: é a organização que quer dar uma olhada.                                

Para poder retornar os parametros podemos utilizar o comando ASN, onde podemos descobrir o que retornar. Quando colocado o ip na frente ele retorna o IP e o dominio.

### ENUM ###
O enum é o modo de busca de dominio e de scam de cada dominio. Ter todos os dominios futuramente é bom, pois pode mostrar as vunerabilidade do alvo.
O modo enum tem dois modos: passsivo e ativo.
<i>Modo PASSIVE</i>: desabilita toda resolução de DNS, ou seja retorna todos os dominios inclusive os que não estão ativos.
<i>Modo ACTIVE</i>: nos mostra informações um pouco mais agrecivas, mostrando informações que pode ser mais intima do site.

-dir é um comando para criar um diretorio com as informações.
-d é para falar qual o dominio.
-src nos mostra qual banco de dados está essa informação.
-brute é uma maneira de o sistema realizar uma busca mais bruta (Trabalho de força bruta).

### VIZ ###
Modo de visualização de um resultado de um scan.
Podemos esportar um arquivo de analise para ser analisado pelo -maltego.
-d3 é o forma que vai gerar o documento que queremos.

### TRACK ###
Mapeia os ips e informação do alvo de acordo com as informações capituradas.
-last são as ultima informações capituradas.