# GRUBYMACIEK.PL

## Running project locally using docker compose

### Requirements

- Docker
- _Optional_ [just](https://github.com/casey/just) - aliaser for long command and simple bash scripts

### Run using just

```bash
just dev_docker # or
just d
```

### Run using docker compose

```bash
docker compose up --build --remove-orphans --detach
```
