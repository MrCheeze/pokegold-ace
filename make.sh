out=`wla-gb C:/Users/Matt/Documents/Games/smw/BizHawk/gold.asm 2>&1`
echo "$out"
if [ -n "$out" ]; then
    read
	exit 1
fi
out=`wlalink C:/Users/Matt/Documents/Games/smw/BizHawk/linkfile C:/Users/Matt/Documents/Games/smw/BizHawk/gold.gb 2>&1`
echo "$out"
if [ -n "$out" ]; then
    read
	exit 1
fi
