default:
    just --list

# run build_runner to generate all needed code for app to work
codegen:
    dart run build_runner build

# run app locally as a webpage
local:
    flutter run -d web-server

# run app locally using docker compose, app avaialble at port 8080
dev_docker:
    docker compose up --build --remove-orphans


alias c := codegen
alias l := local
alias d := dev_docker