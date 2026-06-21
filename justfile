default:
    just --list

# run build_runner to generate all needed code for app to work
codegen:
    dart run build_runner build

# run app locally as a webpage
local:
    flutter run -d web-server

alias c := codegen
alias l := local