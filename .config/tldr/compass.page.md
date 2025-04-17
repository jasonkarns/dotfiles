# compass

> Interact with deployed environments at chime
> More information: <https://github.com/1debit/compass-cli>.

- List branchpins

`compass branchpin list {{app_name}}`

- Pin an environment to a branch

`compass branchpin set {{app_name}} -e {{devN}} -r {{branch_name}}`

- Deploy a branch to an environment

`compass deploy create {{app_name}} -e {{devN}} -r {{branch_name}}`

- Shortcut to deploy immediately after a branchpin

`^branchpin set^deploy create`

- Open a console

`compass console run {{app_name}} -e {{devN}} [-r {{branch_name}}]`
