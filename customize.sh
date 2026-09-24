ui_print "****************************************"
ui_print "   GMS & Wallet Cache Cleaner Module    "
ui_print "              by imhugo22               "
ui_print "****************************************"
ui_print ""
ui_print "- Installing Action script..."

# Asegura permisos de ejecución para action.sh (0755 = rwxr-xr-x)
set_perm "$MODPATH/action.sh" 0 0 0755

ui_print "- Action button configured."
ui_print "- Done! Reboot to enable the action button."
ui_print ""