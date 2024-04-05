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
    @echo "Setting the module name to {{name}} ...\n"
    @cp -r ./templates/default-module ./modules/{{name}}
    echo "\n# {{name}}\n<!-- BEGIN_TF_DOCS -->\n\{\{ .Content \}\}\n<!-- END_TF_DOCS -->" > ./modules/{{name}}/README.md

stack account env region name:
    @echo "Setting the stack account environment region name to {{name}} ...\n"
    @terramate create ./stacks/{{account}}/{{env}}/{{region}}/{{name}}

run:
    just fmt
    just val
    just doc
    just gen

doc: 
    @echo "Generating the documentation...\n"
    @terraform-docs -c .terraform-docs.yml ./modules
fmt:
    @echo "Formatting the project...\n"
    @tofu fmt -recursive    

gen:
    @echo "Generating the project...\n"
    @terramate generate

val:
    @echo "Validating the project...\n"
    @tofu validate

