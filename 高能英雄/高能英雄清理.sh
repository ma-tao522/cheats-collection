echo 开始清理高能英雄封号残留 By楠业.
am force-stop com.tencent.tmgp.gnyx
mv /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/AClient/AClient/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/AClient/AClient/Saved/.Paks
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/AClient/AClient/Saved/*

mv /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/AClient/AClient/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/AClient/AClient/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/AClient/AClient/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/AClient/AClient/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/AClient/AClient/Saved

com.tencent.tmgp.gnyx/files/UE4Game/AClient/AClient/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/AClient /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/.AClient
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/.AClient /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/AClient

mv /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/.UE4Game
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/ProgramBinaryCache

mv /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/.files /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx1
pm clear com.tencent.tmgp.gnyx
mv /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx1 /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx

echo 成功！开始更换ID 
echo 成功！开始更换ID 

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.gnyx
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml

echo 最后阶段
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.gnyx
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml

echo 正在执行
system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到高能根目录: $app_path"

# 删除 /Documents/tss_tmp
delete_path=$app_path/Documents/tss_tmp
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/tdm.db
delete_path=$app_path/Documents/tdm.db
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/tss_app_915c.dat
delete_path=$app_path/Documents/tss_app_915c.dat
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/tss_cs_stat2.dat
delete_path=$app_path/Documents/tss_cs_stat2.dat
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/api.tpns.sh.tencent.com_IPXL3G6EADY4_xgvipiotprivateserialization.b
delete_path=$app_path/Documents/api.tpns.sh.tencent.com_IPXL3G6EADY4_xgvipiotprivateserialization.b
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/tss.i.m.dat
delete_path=$app_path/Documents/tss.i.m.dat
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/tersafe.update
delete_path=$app_path/Documents/tersafe.update
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/ShadowTrackerExtra/Saved/Logs
delete_path=$app_path/Documents/ShadowTrackerExtra/Saved/Logs
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/ShadowTrackerExtra/Saved/Config
delete_path=$app_path/Documents/ShadowTrackerExtra/Saved/Config
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Library/Caches
delete_path=$app_path/Library/Caches
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Library/'Saved Application State'
delete_path=$app_path/Library/'Saved Application State'
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Library/MidasLog
delete_path=$app_path/Library/MidasLog
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Library/WebKit
delete_path=$app_path/Library/WebKit
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Library/Cookies
delete_path=$app_path/Library/Cookies
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Library/'Application Support'
delete_path=$app_path/Library/'Application Support'
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Library/APWsjGameConfInfo.plist
delete_path=$app_path/Library/APWsjGameConfInfo.plist
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /private/var/gg_address
delete_path=/private/var/gg_address
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/sp_default.plist
delete_path=$app_path/Documents/sp_default.plist
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Library/'ts.records'
delete_path=$app_path/Library/'ts.records'
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"



iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.gnyx/databases
chmod 000 //data/data/com.tencent.tmgp.gnyx/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.gnyx/files/ano_tmp

PKG=com.tencent.tmgp.gnyx
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml


echo -n "时间："
date "+%Y年%H时%M分%S秒"
echo -n "设备："
getprop ro.product.brand
echo -n "设备类型："
getprop ro.product.model


echo -e "\033[41m清理成功 \033[0m"

echo 正在运行
echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/AClient/AClient/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/AClient/AClient/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/AClient/AClient/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.gnyx/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.gnyx/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.gnyx/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.gnyx/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.gnyx/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.gnyx/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/AClient/AClientSaved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/AClient/AClientSaved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.gnyx/files/UE4Game/AClient/AClientSaved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.gnyx/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.gnyx/files/midas/log/com.tencent.tmgp.gnyx/


sleep 3s


echo -e "\033[41m---正在自动为你检查一遍是否清理成功---\033[0m"
echo -e "\033[41m---请稍等马上检查完成---\033[0m"

PKG=com.tencent.tmgp.gnyx
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml

echo -e "\033[41m---清理文件成功 频道 @nanyeyyds---\033[0m"
echo -e "\033[41m---请更改ID重启手机在上号---\033[0m"
echo -e "\033[41m---频道 @nanyeyyds---\033[0m"
