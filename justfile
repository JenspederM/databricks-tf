default:
    @just fmt
    @just --list

alias c := commit

commit MESSAGE *FLAGS:
    @echo "Committing the project with message {{MESSAGE}} and flags {{FLAGS}} ...\n"
    @just fmt
    @just gen
    git commit {{FLAGS}} -m "{{MESSAGE}}"

mod name:
    @echo "Creating module '{{name}}' ...\n"
    @cp -r ./templates/default-module ./modules/{{name}}
    @echo "\n# {{name}}\n<!-- BEGIN_TF_DOCS -->\n\{\{ .Content \}\}\n<!-- END_TF_DOCS -->" > ./modules/{{name}}/README.md

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