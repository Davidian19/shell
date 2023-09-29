O Shell é um shell de linha de comando simples, semelhante ao Unix, implementado em C. Ele fornece funcionalidades básicas de um shell, incluindo a execução de comandos, o tratamento de pipelines e a execução de comandos em segundo plano. Este README tem como objetivo fornecer uma visão geral das características do shell, como compilá-lo e usá-lo, e uma explicação da estrutura do código.

## Características
Execução de Comandos: O Shell permite que você execute comandos simples ou sequências de comandos separados por ponto e vírgula.

Suporte a Pipelines: Você pode criar pipelines encadeando comandos usando o símbolo |.

Execução em Segundo Plano: Comandos podem ser executados em segundo plano ao adicionar & ao final.

Modo em Lote: Você pode executar um conjunto de comandos a partir de um arquivo, fornecendo o arquivo como argumento ao iniciar o shell.

Histórico de Comandos: O shell armazena o último comando executado, que pode ser repetido usando !!.

Execução Sequencial e Paralela: Você pode alternar entre a execução sequencial e paralela usando os comandos style sequential e style parallel.

Compilação
Para compilar o Dipp Shell, siga estas etapas:

Abra uma janela de terminal.

Navegue até o diretório que contém os arquivos de código-fonte.

Compile o código usando Makefile:

bash
```
make
```
A opção -pthread é necessária para habilitar o suporte a pthreads (para execução em segundo plano).

Execute o shell compilado:

bash
```
./shell
```
Uso
Depois de compilar e executar o Shell, você pode começar a usá-lo como uma interface de linha de comando.

## Comandos Básicos
Digite comandos como faria em um shell padrão.

Para executar um comando, simplesmente digite-o e pressione Enter.

Para sair do shell, digite exit e pressione Enter.

## Sequências de Comandos
Você pode separar vários comandos com ponto e vírgula (;) para executá-los sequencialmente.

Por exemplo:

shell
```
ls -l ; pwd ; date
```
## Pipelines
Você pode criar pipelines usando o símbolo de pipe (|) para encadear comandos.

Por exemplo:

shell
```
ls -l | grep .txt
```
## Execução em Segundo Plano
Para executar um comando em segundo plano, adicione & ao final do comando.

Por exemplo:

shell
```
comando_demorado &
```
## Modo em Lote
Você pode executar um conjunto de comandos a partir de um arquivo, fornecendo o arquivo como argumento ao iniciar o shell.

Por exemplo:

shell
```
./shell arquivo_em_lote.txt
```
## Histórico de Comandos
Você pode repetir o último comando executado usando !!.

Por exemplo:

shell
```
!!
```
## Alternância de Estilo
Você pode alternar entre a execução sequencial e paralela usando os seguintes comandos:
style sequential: Executa comandos sequencialmente.
style parallel: Executa comandos em paralelo.
Estrutura do Código
O código-fonte do Dipp Shell está organizado em funções e segue uma estrutura típica de programas em C. Aqui está uma breve visão geral da estrutura do código:

Função Principal: A função main é o ponto de entrada do programa. Ela lida com a entrada do usuário, executa comandos e gerencia a operação do shell.

Execução de Comandos: A função exec é responsável por executar comandos, incluindo o tratamento de pipelines e execução em segundo plano.

Modo em Lote: Quando fornecido com um arquivo em lote como argumento, o shell lê e executa comandos do arquivo em modo em lote.

Execução Paralela: O shell suporta a execução tanto sequencial quanto paralela de comandos, com base na entrada do usuário.

Histórico de Comandos: O último comando executado é armazenado e pode ser repetido usando o comando !!.

Organização do Código: O código está dividido em funções para melhorar a legibilidade e a manutenção.

Este README fornece uma visão geral do Dipp Shell. Para uma compreensão mais detalhada do código, você pode consultar os comentários no código-fonte e a documentação.

Observação: Este shell é uma implementação básica, destinada a fins educacionais, e pode não cobrir todas as funcionalidades de um shell completo, como o Bash ou o Zsh.
