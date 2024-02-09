#!/sbin/sh
# This script is Needed to Set Automatically Device Props.

prjName=$(cat /proc/oplusVersion/prjVersion)
echo $prjName

case $prjName in
    "20682")
        resetprop "ro.product.model" "realme 7"
        resetprop "ro.build.product" "RMX2155"
        resetprop "ro.product.device" "RMX2155L1"
        ;;
    *)
        resetprop "ro.product.model" "realme 7"
        resetprop "ro.build.product" "RMX2151"
        resetprop "ro.product.device" "RMX2151L1"
        ;;
esac

exit 0
