nvim_telescope_lsp_document_symbols:
  if (action_before)
  {
    if (is_neovim() == 1)
    {
      push_msg_action("nvim telescope lsp_document_symbols")
    }
  } else
  {
    if (is_neovim() == 1)
    {
      send {Ctrl down}
      send {Shift down}
      send {F12 down}
      send {Ctrl up}
      send {Shift up}
      send {F12 up}
      send {F8 down}
      send {F8 up}
    }
  }
return
