function bsync
cd ~/.cache/yay/
set zstLoc (fd -a .zst)
set zstName (cat ~/.cache/own_/bsync_names)
for binary in $zstLoc
set found "0"
for name in $zstName
if test "$binary"=="$name"
set found "1"
break
end
end
if test "$found"=="0"
sha1sum $binary >> ~/.cache/own_/bsync_sha1sum #Not sure, but saving the checksum
echo $binary >> ~/.cache/own_/bsync_names 
cp --verbose $binary /media/sdb5/New/
end
end
end
