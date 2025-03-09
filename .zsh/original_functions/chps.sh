chps() {
  PS3="Select Prompt: "

  select type in Default Time Directory
  do
    case $type in
      Default)
        PROMPT='%F{cyan}%*%f %F{green}[%~]%f %# '
        break
      ;;
      Time)
        PROMPT='%F{cyan}%*%f %F{green}%f %# '
        break
      ;;
      Directory)
        PROMPT='%F{green}[%~]%f %# '
        break
      ;;
      *)
        echo "Invalid option"
        break
      ;;
    esac
  done
}
