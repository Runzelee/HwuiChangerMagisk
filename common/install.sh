ui_print "- Use volume key to select the renderer pipline."
ui_print "  Vol Up = skiagl, Vol Down = skiavk"
ui_print "  skiagl will be automatically selected after 3 seconds."
ui_print " "

if chooseport; then
  ui_print "  skiagl is selected!"
  sed -i '1,$d' $MODPATH/system.prop
  echo "debug.hwui.renderer=skiagl" >> $MODPATH/system.prop
else
  ui_print "  skiavk is selected!"
  sed -i '1,$d' $MODPATH/system.prop
  echo "debug.hwui.renderer=skiavk" >> $MODPATH/system.prop
fi

ui_print " "