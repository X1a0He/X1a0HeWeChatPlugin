#!/bin/bash
X1A0HE_WECHAT_PLUGIN_INSTALLER="X1a0He WeChat Plugin Installer"
WECHAT_PATH="/Applications/WeChat.app"

if [ ! -d "$WECHAT_PATH" ]
then
  WECHAT_PATH="/Applications/微信.app"
  if [ ! -d "$WECHAT_PATH" ]
  then
    echo "[${X1A0HE_WECHAT_PLUGIN_INSTALLER}] 未找到微信路径，请先到微信官网下载微信"
    exit 1
  fi
fi

APP_NAME="WeChat"
WECHAT_APP_PATH="$WECHAT_PATH/Contents/MacOS"
WECHAT_EXECUTABLE_PATH="${WECHAT_APP_PATH}/${APP_NAME}"
WECHAT_EXECUTABLE_ORIGINAL_PATH="${WECHAT_APP_PATH}/${APP_NAME}.original"

# 判断是否存在备份文件
if [ -f "$WECHAT_EXECUTABLE_ORIGINAL_PATH" ]
then
  echo "[${X1A0HE_WECHAT_PLUGIN_INSTALLER}] 检测到已安装过，是否重新安装?[y/n]"
  read -r REPLY
  if [ "$REPLY" = "Y" ] || [ "$REPLY" = "y" ]
  then
    rm -f "$WECHAT_EXECUTABLE_PATH"
    mv "$WECHAT_EXECUTABLE_ORIGINAL_PATH" "$WECHAT_EXECUTABLE_PATH"
    exit 0
  else
    exit 0
  fi
else
  echo "[${X1A0HE_WECHAT_PLUGIN_INSTALLER}] 检测到是首次安装，正在备份原始文件..."
  cp "$WECHAT_EXECUTABLE_PATH" "$WECHAT_EXECUTABLE_ORIGINAL_PATH"
  if [ $? -ne 0 ]; then
    echo "[${X1A0HE_WECHAT_PLUGIN_INSTALLER}] 备份失败，请检查权限或重试"
    exit 1
  fi
fi

# 拷贝动态库到微信目录
echo "[${X1A0HE_WECHAT_PLUGIN_INSTALLER}] 正在拷贝插件到微信目录..."
cp "./X1a0HeWeChatPlugin.dylib" "$WECHAT_APP_PATH"
if [ $? -ne 0 ]; then
    echo "[${X1A0HE_WECHAT_PLUGIN_INSTALLER}] 拷贝插件失败，请检查权限或重试"
    exit 1
fi

# 注入动态库
echo "[${X1A0HE_WECHAT_PLUGIN_INSTALLER}] 正在注入插件..."
./insert_dylib "$WECHAT_APP_PATH/X1a0HeWeChatPlugin.dylib" "$WECHAT_EXECUTABLE_PATH" "$WECHAT_EXECUTABLE_PATH"
if [ $? -ne 0 ]; then
    echo "[${X1A0HE_WECHAT_PLUGIN_INSTALLER}] 注入插件失败"
    exit 1
fi

# 重新签名
echo "[${X1A0HE_WECHAT_PLUGIN_INSTALLER}] 正在重新签名..."
sudo /usr/bin/codesign -f -s - --all-architectures --entitlements "./entitlements.xml" "$WECHAT_EXECUTABLE_PATH"
if [ $? -ne 0 ]; then
    echo "[${X1A0HE_WECHAT_PLUGIN_INSTALLER}] 重新签名失败"
    exit 1
fi

echo "[${X1A0HE_WECHAT_PLUGIN_INSTALLER}] 安装完成！"