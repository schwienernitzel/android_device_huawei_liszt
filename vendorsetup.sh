# Apply ROM patches
echo -e "\033[31mAutomatically applying ROM patches...\033[0m"
THISDIR=$PWD
cd ${THISDIR}/device/huawei/liszt/patches
./patch.sh
cd ${THISDIR}
sleep 1

add_lunch_combo omni_liszt-userdebug
