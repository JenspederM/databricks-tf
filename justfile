default:
    @just fmt
    @just --list

commit MESSAGE *FLAGS:
    @echo "Committing the project with message {{MESSAGE}} and flags {{FLAGS}} ...\n"
    @just fmt
    @just gen
    git commit {{FLAGS}} -m "{{MESSAGE}}"
  

mod name:
    @echo "Setting the module name to {{name}} ...\n"
    @cp -r ./templates/default-module ./modules/{{name}}

stack account env region name:
    @echo "Setting the stack account environment region name to {{name}} ...\n"
    @terramate create ./stacks/{{account}}/{{env}}/{{region}}/{{name}}

run:
    just fmt
    just gen

fmt:
    @echo "Formatting the project...\n"
    @tofu fmt -recursive    

gen:
    @echo "Generating the project...\n"
    @terramate generate

val:
    @echo "Validating the project...\n"
    @tofu validate

