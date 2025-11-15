# Cli

1. Credenciais (token) -> `~/.config/paastel/config.toml`
2. Sessão (org/time atuais) –> `~/.config/paastel/session.toml`


**config.toml**

```toml
[auth]
base_url = "https://api.paastel.io" # ou http://localhost:3000 no dev
token = "ppx_123456789abcdef"       # token
```

**session.toml**

```toml
[context]
organization_id = 42
organization_slug = "kovi"
team_id = 7
team_slug = "devsecops"
```

## Commands

```
paastel
  auth
    login           # autentica, recebe token e salva em config.toml
    logout          # apaga token local
    status          # mostra usuário logado
  org
    create          # cria organização (precisa estar autenticado)
    list            # (opcional) lista organizações acessíveis
    use             # seta org atual em session.toml
  team
    create          # cria time dentro da org atual (precisa auth + org)
    list            # (opcional) lista times da org atual
    use             # seta time atual em session.toml
  context
    show            # mostra org/time atuais
    clear           # limpa sessão (sem apagar token)
  app
    create          # cria app na org/time atuais
    list            # (opcional) lista apps
```

## Fluxo completo

Um fluxo de um primeiro deploy

```
# 1. Login (gera token e salva no config.toml)
paastel auth login --email murilo@exemplo.com

# 2. Cria organização (apenas se for o “owner” inicial)
paastel org create --name "Kovi" --slug kovi

# 3. Cria um time dentro dessa organização
paastel team create --name "DevSecOps" --slug devsecops

# 4. (Opcional) trocar de org/time depois:
paastel org use --slug kovi
paastel team use --slug devsecops

# 5. Ver contexto
paastel context show

# 6. Criar uma app já usando org/time do session.toml
paastel app create --name "cep-is-api" --slug cep-is-api
```
