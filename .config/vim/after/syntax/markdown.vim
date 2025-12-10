" format frontmatter as yaml/toml
unlet b:current_syntax
syntax include @Yaml syntax/yaml.vim
syntax include @Toml syntax/toml.vim
syntax region yamlFrontmatter start=/\%^---$/ end=/^---$/ keepend contains=@Yaml
syntax region tomlFrontmatter start=/\%^+++$/ end=/^+++$/ keepend contains=@Toml
