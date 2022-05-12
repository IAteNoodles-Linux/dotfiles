function syncBin
cd ~/.cache/yay/
set zstLoc (fd -a .zst)
rsync -z --verbose $i /media/sdb5/New/
end
