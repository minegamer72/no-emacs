alias emacs=vimToEmacs

vimToEmacs () {
  printf 'Did you mean "nvim"? [Y/N]\n' 
  read yesno

  case $yesno in
    [yY]) 
      nvim $@ ;;
    [nN]) 
      echo "Error: Wrong text editor" 
      exit 1 
      ;;
    *) 
      exit ;;
  esac
}

