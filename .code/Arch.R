## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)
    
# save the built-in output hook
hook_output <- knitr::knit_hooks$get("output")

# set a new output hook to truncate text output
knitr::knit_hooks$set(output = function(x, options) {
  if (!is.null(n <- options$out.lines)) {
    x <- xfun::split_lines(x)
    if (length(x) > n) {
      # truncate the output
      x <- c(head(x, n), "....\n")
    }
    x <- paste(x, collapse = "\n")
  }
  hook_output(x, options)
})


## sudo pacman -Syu --noconfirm


## sudo pacman -Ss <package>


## sudo pacman -S --noconfirm --needed <package>


## sudo pacman -R --noconfirm <package>


## yay -S debtap


## sudo debtap -u


## debtap <package.deb>


## sudo pacman -U <package.pkg>


## yay -Ss <package>


## yay -S --noconfirm <package>


## yay -Pu


## yay -Syu


## pksyua


## alias pksyua="yaourt -Syu  --aur --noconfirm"


## yay -R <package>


## yay -Rs <package>


## yay -Scc


## rsync -av --exclude-from=/home/murray/rsync_excludes.txt /home/murray/Work/AIMS/ /run/media/D4BD-1FB5/baskup/Work/AIMS --exclude '*._cache'


## rclone lsd googledrive:


## rclone ls googledrive:


## rclone sync <localdirectory> googledrive:<remotedirector> --dry-run --progress


## rclone sync <localdirectory/source> googledrive:<remotedirector> --progress


## rclone sync googledrive:<remotedirector> <localdirectory> --dry-run --progress


## rclone sync googledrive:<remotedirector> <localdirectory/source> --progress


## rclone config


## rclone lsd cloudstor:


## rclone ls cloudstor:


## rclone sync --progress <localdirectory> cloudstor:<remotedirector> --dry-ru


## rclone sync --progress <localdirectory/source> cloudstor:<remotedirector>


## rclone sync --progress data/. cloudstor:/Projects/test/.


## rclone sync --progress cloudstor:<remotedirector> <localdirectory> --dry-run


## rclone sync --progress cloudstor:<remotedirector> <localdirectory/source>


## rclone config


## ln -s <target> <link name>


## sudo ln -s ~/Work/AIMS/Program\ 1/Projects/Products\ for\ ALT/docs /srv/http/ALT


## export TERM=xterm-256color


## pacman -S pulseaudio-alsa pulseaudio-bluethooth bluez-utils


## rfkill list

## rfkill unblock bluetooth


## systemctl start bluetooth.service

## systemctl enable bluetooth.service


## bluetoothctl

## power on

## agent on

## exit


## xdg-settings --list


## xdg-settings get default-web-browser


## xdg-settings set default-web-browser google-chrome.desktop


## xdg-mime query default text/html


## mkdir ~/mycloud


## cat > mchfuse.conf << 'EOF'

## username = "EMAIL"

## password = "PASSWORD"

## EOF

## 

## chmod 600 mchfuse.conf


## mchfuse -c mchfuse.conf "Murray's My Cloud Home" ~/mycloud


## umount ~/mycloud


## tmux


## C-b <%/">


## C-b <arrow>


## C-d


## C-b d


## tmux ls

## tmux attach -t <number>


## C-b c


## C-b w


## C-b <p/n/#>


## C-b &


## systemctl start application.service


## systemctl stop application.service


## systemctl restart application.service


## systemctl reload application.service


## systemctl enable application.service


## systemctl disable application.service


## systemctl status application.service


## systemctl status cronie.service


## systemctl list-units


## systemctl list-units --all


## systemctl list-units --state=enabled


## systemctl list-unit-files --state=enabled


## less /etc/passwd


## sudo adduser <name>


## less /etc/group


## getent group


## sudo usermod -a -G <group> <name>


## passwd


## getfacl <folder>


## chmod g+s <parentfolder>


## ssh-keygen -t rsa

