#!/usr/bin/env bash
SKIPMOUNT=false

PROPFILE=false

POSTFSDATA=false

LATESTARTSERVICE=true

REPLACE_EXAMPLE=""

REPLACE=""

print_modname() {
  ui_print "*******************************"
  ui_print "     		64ttl		       "
  ui_print "       Your arch: $ARCH		   "
  ui_print "*******************************"
}

on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}