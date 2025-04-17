# halo

> Develop against chime services in the cloud
> More information: <https://github.com/1debit/halo>.

- Launch halo (beware release notes)

`halo start`

- Link a service both ways

`halo link {{service}} --two-way`

- Run a shell in a service

`halo exec {{service}}`

- Watch halo status

`halo status -w`

- Updating halo

`brew update; brew upgrade halo && halo init`
