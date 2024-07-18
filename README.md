# Verificação de Conectividade de Rede para Login no Windows

Este script permite que um usuário faça login no Windows apenas se estiver conectado à Internet via cabo ou Wi-Fi. Ele verifica a conectividade de rede durante o processo de login e impede o login se não houver conexão.

## Arquivos

- `network_check.bat`: Script batch que verifica a conectividade de rede.

## Usabilidade

O `network_check.bat` é um script batch que deve ser executado durante o processo de login do Windows. Ele verifica se há uma conexão ativa com a Internet fazendo ping no `google.com`. Se a conexão for bem-sucedida, o login é permitido; caso contrário, o login é impedido e uma mensagem de erro é exibida.

## Configuração

### Passo a Passo

1. **Criar o Script Batch**
- Abra o bloco de notas e cole o código presente no arquivo: `network_check.bat`.

2. **Configurar o Script de Login do Windows para uma tarefa agendada**
## #Use o Editor de Diretivas de Grupo Local para configurar o script para ser executado durante o login:
```plaintext
Use o Agendador de Tarefas do Windows para executar o script network_check.bat quando um usuário fizer login.

Pressione Win + R, digite taskschd.msc e pressione Enter.
No painel direito, clique em Criar Tarefa.
Na aba Geral, dê um nome para a tarefa (por exemplo, Verificar Conexão de Rede).
Marque Executar com os privilégios mais altos.
Na aba Disparadores, clique em Novo.
Configure para Iniciar a tarefa: Ao fazer logon.
Na aba Ações, clique em Novo.
Configure para Ação: Iniciar um programa.
Em Programa/script, clique em Procurar e selecione o arquivo network_check.bat.
Na aba Condições, desmarque Iniciar a tarefa apenas se o computador estiver ligado à corrente alternada para garantir que o script seja executado mesmo quando o computador estiver funcionando com bateria.
Clique em OK para criar a tarefa.
```
3. **Testar a Configuração**
```plaintext
Reinicie o computador.
Tente fazer login. O script network_check.bat será executado ao fazer login.
Se a conexão com a Internet estiver ativa, o login será permitido.
Se não houver conexão com a Internet, o script forçará o logout.
```