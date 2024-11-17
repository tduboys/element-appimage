#! /bin/sh


set -eux
sed -i 's,import AutoLaunch from "auto-launch";,import AutoLaunch from "auto-launch";\nimport * as appimage from "./appimage.js";,g' src/electron-main.ts
sed -i "s,global.launcher.enable();,appimage.enableAutoStart();,g" src/electron-main.ts
sed -i "s,global.launcher.disable(),appimage.disableAutoStart(),g" src/electron-main.ts
sed -i "s,await oldLauncher.isEnabled(),appimage.isAutoStartEnabled(),g" src/electron-main.ts
