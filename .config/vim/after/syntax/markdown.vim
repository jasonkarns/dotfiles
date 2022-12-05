" format frontmatter as yaml
echo "FIX MARKDOWN SETTINGS"
" I don't think this has been vetted to work to get markdown frontmatter
" recognized as yaml
syntax include @yaml syntax/yaml.vim
syntax region yamlFrontmatter start=/%^---$/ end=/^---$/ keepend contains=@yaml
