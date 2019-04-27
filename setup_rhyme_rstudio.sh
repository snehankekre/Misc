#!bin/bash

echo "\n[*] Configuring RStudio...\n\n"
echo "[*] Navigate to Advanced -> Click on Launch KDE Services at Startup -> Close\n"
xfce4-session-settings
echo "[✓] Launching KDE Services at Startup\n"
mkdir .config/autostart/
echo "[✓] Created .config/autostart/ directory\n"
cd Desktop
echo "[*] Enter the full R notebook/script name including the .R extension to launch at Startup: "
read notebook
grep -rl "rstudio %F" | xargs sed -i "s/rstudio %F/rstudio $notebook/g" "$notebook"
cd ..
cp Desktop/rstudio.desktop .config/autostart/
echo "[✓] Copied modified RStudio launcher to .config/autostart/ \n"
echo "[✓] Setup complete! Exiting...\n"
