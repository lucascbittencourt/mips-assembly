# Mips Assembly

[MIPS](https://www.mips.com) significa Microprocessor without Interlocked Pipeline Stages é uma arquitetura de microprocessadores RISC desenvolvida pela MIPS Computer Systems em 1984 e em junho de 2018 foi adquirida pela Wave Computing. É um chip amplamente utilizado em produtos de entretenimento ao consumidor, encontramos o MIPS em drones, impressoras, tv's, roteadores da cisco entre outros.

## Registradores

São pequenas memórias dentro de uma CPU que realizam duas operações básicas, ler e gravar. O microprocessador MIPS tem 32 registradores cada um com capacidade de armazenar 32 bits, os registradores são altamente velozes, executando intruções em até 2 nanosegundos.

### Registradores visiveis ao usuario

Estes podem ser referenciados pela linguagem de maquina que a CPU executa. Podendo ser caracterizados em:

* de uso geral
* de dados
* de endereço
* de códigos de condições

#### Registradores de uso geral

São utilizados para armazenar qualquer operando, usados em conjuntos de instruções computacionais à operação. No geral existem algumas restrições como registradores dedicados a pontos flutuantes e operações de pilha. Também podem ser utilizados para endereçamento.

### Registradores de controle e estado

Podem ser chamados de registradores de uso específico e são usados para controlar as ações da CPU, é comum que estes registradores não possam ser visiveis pelo usuário entretanto alguns podem ser visiveis no nível de linguagem de maquina e nível SO.

## Registradores MIPS

Na arquitetura MIPS os registradores são precedidos de **$** e depois seu nome ou número.

Nome Lógico | Nome Real 	| Uso
---			|	---			|	---
$zero		|	$0			|	Constante 0
$at			|	$1 			|	Reservado pelo assemblador
$v0...$v1	|	$2...$3		|	Recebem as funções de chamada do sistema
$a0...$a3	|	$4...$7 	|	Primeiros parametros das funções
$t0...$t7	|	$8...$15	|	Geral (não preservam os valores)
$s0...$s7	|	$16...$23	|	Geral (preservam os valores)
$t8...$t9	|	$24...$25	|	Geral (não preservam seus valores)
$k0...$k1	|	$26...$27	|	Reservados para o kernel
$gp			|	$28			|	Ponteiro global
$sp			|	$29			|	Apontar para pilha
$fp			|	$30			|	Apontador de frame
$ra			|	$31			|	Armazaena o endereço de retorno de função
pc			|				|	Registrador especial (contador de execuções)
hi			|				|	Registrador especial (resultado de multiplicações e divisões)
lo			|				|	Registrador especial (resultado de multiplicações e divisões)