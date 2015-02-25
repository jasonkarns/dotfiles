if exists('g:loaded_EditorConfig')

  function! ListIndentChars(config)
      if has_key(a:config, "indent_style")
        if a:config["indent_style"] == "tab"
            setl listchars+=tab:\ \ 
        elseif a:config["indent_style"] == "space"
        endif
      endif

      return 0   " Return 0 to show no error happened
  endfunction

  call editorconfig#AddNewHook(function('ListIndentChars'))

endif
