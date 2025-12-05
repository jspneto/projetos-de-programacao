# Resumo de Comandos do Git

Arquivo com os comandos que mais utilizo no Git. Contém descrição e exemplos.

## 1. Inicializar um Repositório Git
   - **Comando:** `git init`
   - **Descrição:** Inicializa um novo repositório Git no diretório atual.
   - **Exemplo:**
      ```bash
      mkdir meu-projeto
      cd meu-projeto
      git init
      ```

## 2. Criar e Alternar para uma Branch
   - **Comando:** `git checkout -b <nome_da_branch>`
   - **Descrição:** Cria uma nova branch e muda para ela.
   - **Exemplo:**
      ```bash
      git checkout -b main                         # Cria e muda para a branch 'main'
      git checkout -b develop                      # Cria e muda para a branch 'develop'
      ```

## 3. Subir uma Branch para o Repositório Remoto
   - **Comando:** `git push origin <nome_da_branch>`
   - **Descrição:** Envia a branch especificada para o repositório remoto.
   - **Exemplo:**
      ```bash
      git push origin develop                      # Envia a branch 'develop' para o remoto
      ```

## 4. Fazer Merge da Branch 'develop' na Branch 'main'
   - **Comandos:**
      ```bash
      git checkout main
      git pull origin main
      git merge develop
      git push origin main
      ```
   - **Descrição:** Integra as mudanças da branch `develop` na branch `main`.
   - **Exemplo Completo:**
      ```bash
      git checkout develop                         # Certifique-se de estar na branch develop
      git pull origin develop                      # Atualize a branch develop
      git checkout main                            # Mude para a branch main
      git pull origin main                         # Atualize a branch main
      git merge develop                            # Faça o merge da branch develop na main
      git push origin main                         # Suba as alterações da master para o repositório remoto
      ```

## 5. Criar uma Tag
   - **Comando:** `git tag -a <nome_da_tag> -m "mensagem"`
   - **Descrição:** Cria uma tag anotada no commit atual.
   - **Exemplo:**
      ```bash
      git tag -a v1.0 -m "Versão 1.0"              # Cria a tag v1.0
      ```

## 6. Remover uma Tag Local e Remotamente
   - ### Remover Localmente
      - **Comando:** `git tag -d <nome_da_tag>`
      - **Descrição:** Remove a tag do repositório local.
      - **Exemplo:**
         ```bash
         git tag -d tag_errada                     # Remove a tag 'tag_errada' localmente
         ```
   - ### Remover do Repositório Remoto
      - **Comando:** `git push origin --delete <nome_da_tag>`
      - **Descrição:** Remove a tag do repositório remoto.
      - **Exemplo:**
         ```bash
         git push origin --delete tag_errada       # Remove a tag 'tag_errada' remotamente
         ```

## 7. Subir uma Tag para o Repositório Remoto
   - **Comando:** `git push origin <nome_da_tag>` ou `git push origin --tags`
   - **Descrição:** Envia uma tag específica ou todas as tags para o repositório remoto.
   - **Exemplo:**
      ```bash
      git push origin v1.0                         # Envia a tag v1.0 para o remoto
      git push origin --tags                       # Envia todas as tags para o remoto
      ```

## 8. Adicionar Arquivos ao Staging Area
   - **Comando:** `git add <arquivo>` ou `git add .`
   - **Descrição:** Adiciona arquivos ao staging area para serem commitados.
   - **Exemplo:**
      ```bash
      git add README.md                            # Adiciona o arquivo README.md
      git add .                                    # Adiciona todos os arquivos modificados
      ```

## 9. Fazer um Commit
   - **Comando:** `git commit -m "mensagem do commit"`
   - **Descrição:** Faz um commit das mudanças adicionadas ao staging area com uma mensagem descritiva.
   - **Exemplo:**
      ```bash
      git commit -m "Primeiro commit"              # Commit com uma mensagem
      ```

## 10. Amendar o Último Commit
   - **Comando:** `git commit --amend`
   - **Descrição:** Permite editar o último commit, seja para mudar a mensagem ou adicionar alterações.
   - **Exemplo:**
      ```bash
      git add arquivo_corrigido
      git commit --amend -m "Mensagem corrigida"
      ```

## 11. Rebase Interativo para Editar Commits Antigos
   - **Comando:** `git rebase -i HEAD~<número_de_commits>`
   - **Descrição:** Permite reescrever o histórico dos últimos commits, como editar commits antigos.
   - **Exemplo:**
      ```bash
      git rebase -i HEAD~3                         # Inicia o rebase interativo nos últimos 3 commits
      ```
   - **Próximos passos:**
      1. Substituir `pick` por uma das seguintes opções:
         - `squash`: Permite mesclar diversos commits em um commit único.
         - `reword`: Permite editar a mensagem de um commit antigo (o código hash será trocado).
         - `edit`: Permite acrescentar ou remover edições em um commit.
            - Acrescente editando qualquer arquivo e adicionando-o normalmente.
            - Remova com o comando `git rm --cached caminho/do/arquivo`
            - Retorne ao último commit com `git rebase --continue`
      2. Envie as alterações para o repositório remoto:
         ```bash
         git push --force-with-lease
         ```

## 12. Stash para Guardar Alterações Temporariamente
   - **Comando:** `git stash` e `git stash pop`
   - **Descrição:** Guarda mudanças não commitadas para serem aplicadas novamente depois.
   - **Exemplo:**
      ```bash
      git stash                                    # Guarda as mudanças temporariamente
      git stash pop                                # Recupera as mudanças guardadas
      ```

## 13. Descartar Alterações Não Stageadas
   - **Comando:** `git reset --hard`
   - **Descrição:** Descarta todas as mudanças não stageadas permanentemente.
   - **Exemplo:**
      ```bash
      git reset --hard                             # Descarta todas as alterações não stageadas
      ```

## 14. Formatar Mensagem de Commit Detalhada
   - **Descrição:** Formata a mensagem de commit para ser clara e detalhada, especialmente útil quando várias alterações são feitas em uma mesma função.
   - **Estrutura:**
      ```
      Linha 1 (Assunto): Resumo breve (até 50 caracteres).
      Linha 2: Linha em branco.
      Linhas seguintes (Corpo): Detalhamento das alterações.
      ```
   - **Exemplo Completo:**
      ```plaintext
      Corrige função X para melhorar a legibilidade e desempenho

      - Otimiza o loop na linha 23 para reduzir a complexidade de O(n^2) para O(n).
      - Refatora a condição na linha 45 para melhorar a legibilidade.
      - Remove a variável desnecessária na linha 57, que estava causando confusão.
      ```

## 15. Importar um Repositório do GitLab para o GitHub
   - **Descrição:** Permite migrar um repositório do GitLab para o GitHub, preservando histórico, branches e tags.
   - **Passos:**
      1. Clone o repositório do GitLab localmente com:
         ```bash
         git clone --mirror <URL_DO_REPOSITORIO_GITLAB>
         ```
      2. Crie um repositório vazio no GitHub.
      3. Adicione o repositório do GitHub como remoto:
         ```bash
         git remote add github <URL_DO_REPOSITORIO_GITHUB>
         ```
      4. Empurre todas as referências para o GitHub:
         ```bash
         git push --mirror github
         ```
      5. (Opcional) Alterar o remoto local para o GitHub:
         ```bash
         git remote set-url origin <URL_DO_REPOSITORIO_GITHUB>
         ```

## 16. Clonar Histórico Completo e Arquivos
   - **Descrição:** Clona um repositório do GitLab, copiando tanto o histórico quanto os arquivos do projeto.
   - **Passos:**
      1. Clone o repositório do GitLab normalmente:
         ```bash
         git clone <URL_DO_REPOSITORIO_GITLAB>
         ```
      2. Adicione o repositório do GitHub como remoto:
         ```bash
         git remote add github <URL_DO_REPOSITORIO_GITHUB>
         ```
      3. Empurre todas as branches para o GitHub:
         ```bash
         git push github --all
         ```
      4. Empurre todas as tags para o GitHub:
         ```bash
         git push github --tags
         ```