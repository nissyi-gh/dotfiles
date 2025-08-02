display_adjust() {
  PS3="Select a number of display setting: "

  select type in default DELL
  do
    case $type in
      default)
        displayplacer "id:80DECF0C-A4B3-F4F6-0857-D6964E3302DB res:2560x1440 hz:60 color_depth:8 enabled:true scaling:on origin:(0,0) degree:0" "id:37D8832A-2D66-02CA-B9F7-8F30A301B230 res:1440x900 hz:60 color_depth:8 enabled:true scaling:on origin:(400,1440) degree:0"
        break
        ;;
      DELL)
        displayplacer "id:80DECF0C-A4B3-F4F6-0857-D6964E3302DB+37D8832A-2D66-02CA-B9F7-8F30A301B230 res:2560x1440 hz:60 color_depth:8 enabled:true scaling:on origin:(0,0) degree:0"
        break
        ;;
      *)
        echo "Invalid option"
        break
        ;;
    esac
  done
}
