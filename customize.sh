ui_print "****************************************"
ui_print "            Integrity Purge             "
ui_print "               by imhugo22              "
ui_print "****************************************"
ui_print ""
ui_print "- Configuring action permissions..."

# Asignar permisos completos de ejecucion a action.sh
set_perm "$MODPATH/action.sh" 0 0 0755
chmod 755 "$MODPATH/action.sh"

ui_print "- Done! Reboot to apply."
ui_print ""