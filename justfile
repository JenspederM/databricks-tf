default:
    @just fmt
    @just --list

alias c := commit

commit MESSAGE *FLAGS:
    @echo "Committing the project with message {{MESSAGE}} and flags {{FLAGS}} ...\n"
    @just fmt
    @just gen
    git commit {{FLAGS}} -m "{{MESSAGE}}"

mod provider name:
    @echo "Creating module '{{name}}' ...\n"
    @./scripts/new-module.bash {{provider}} {{name}}
    

stack account env region stack:
    @echo "Creating stack at ./stacks/{{account}}/{{env}}/{{region}}/{{stack}} ...\n"
    @terramate create ./stacks/{{account}}/{{env}}/{{region}}/{{stack}}

run:
    just fmt
    just val
    just doc
    just gen

fmt:
    @echo "Formatting the project...\n"
    @tofu fmt -recursive

val:
    @echo "Validating the project...\n"
    @tofu validate
    @tofu fmt -recursive

doc: 
    @echo "Generating the documentation...\n"
    @terraform-docs -c .terraform-docs.yml ./modules
gen:
    @echo "Generating the project...\n"
    @terramate generate