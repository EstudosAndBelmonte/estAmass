# AMASS - Comando para buscar informação #
Para descobrir um domínio ou extensões de uma empresa utilizamos um comando.
Por exemplo o whois que nos mostra todos os IP's
-org é a organização que quer dar uma olhada.

Para uma ótima configuração é preciso que configure corretamente assim como no script config do link a seguir.
https://github.com/owasp-amass/amass/tree/master/examples

### INTEL ###
Para descobrir um domínio ou extensões de uma empresa utilizamos um comando. Por exemplo:
-whois: nos mostra todos os IP's                            
-org: é a organização que quer dar uma olhada.                                

Para poder retornar os parâmetros podemos utilizar o comando ASN, onde podemos descobrir o que retornar. Quando colocado o ip na frente ele retorna o IP e o domínio.

### ENUM ###
O enum é o modo de busca de domínio e de scan de cada domínio. Ter todos os domínios futuramente é bom, pois pode mostrar as vulnerabilidades do alvo.
O modo enum tem dois modos: passivo e ativo.
<i>Modo PASSIVE</i>: desabilita toda resolução de DNS, ou seja, retorna todos os domínios inclusive os que não estão ativos.
<i>Modo ACTIVE</i>: nos mostra informações um pouco mais agressivas, mostrando informações que pode ser mais intima do site.

-dir é um comando para criar um diretório com as informações.
-d é para falar qual o domínio.
-src nos mostra qual banco de dados está essa informação.
-brute é uma maneira de o sistema realizar uma busca mais bruta (Trabalho de força bruta).

### VIZ ###
Modo de visualização de um resultado de um scan.
Podemos exportar um arquivo de análise para ser analisado pelo -maltego.
-d3 é a forma que vai gerar o documento que queremos.

### TRACK ###
Mapeia os ips e informação do alvo de acordo com as informações capturadas.
-last são as últimas informações capturadas.

