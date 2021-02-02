# Run this with curl -s -L https://github.com/user261cloud/public/raw/main/tbotsetup.sh | bash
# and enter the password on prompt
# 
# How to make this file?
# cat <script file> | ccrypt | base64 -w 0 ; echo ""
# and then copy paste the code in enc_cmd variable


apt install -y ccrypt > /dev/null
if [ "0" != "$?" ]; then
  echo "failed ccrypt install"
  exit
fi


enc_cmd=\
"cHXFt04Zxeewppb5C1GPYeT3C9sxninH2zaMkx/tAGoNfyWGeq+yJ7seOjAttMFfpZPJH7HYzjNTgXSek3efOo8bnjpzIpPEKCxKpktUbgdnVfwYW+Da24q2keqAtUic5ljMil4yHz/AXENUNa3X7HZRbqtGavFLpB4anst+nfeYHQe/Uy+dOy/gLyOJwARgb0R94AsDQ7zd9jjT/MXE+Wx9Veqqlktag13jHX5w1iQbNriymor0iPlkWjZ6mGyfWe8SucAknfv6GXRAtDbrw+c2DgyZhZqdr8raJdGVvyTVHsEMQ0ZXoTKnvfX7bZ9dKzSxmWZXQBW/1q+l9KDCthgnYyadzLOS+niTnk1XC/nJdlAz45IJkDONVbYB0hYUUGUcZyV1x7fWssy6NvZlKmvMBxjX8Vbu91bXl1zG0XYyrGLV2X+0/0j2jDsjt5esLF5rMh4DngfVwlBt8/zfD5fud6DK0k2ehthaQfhR7tiWpCXEn6+U+LD1Z26mEWpA0jj6v6Twfkwy0lPXmEbLrz36Q5ihipQcwkaUtc4IOu0YTrtm+VedK8D9d3OMkMMhNGfobD/tX0cbKrKjAse/C9f1V5SyRH3xtCof9oevT8iMIECPEV53TUxxt+fnzREi/fOhlEHiq3LgiCGewLh9+1owjxy+rnHDKfpGh8ocf4eKDtCdoGaJDQGc78ZdRzLex9P68rTe+4Z/i97xHaPM5F1guLcYS0Pu22Ls/9nIV0QuMRcR0bBXHeVGYm/STsxxj/layOgz/Xt/bEulONNWRIGF+1dxIkzS6hGJHj2MPm+bRN6FJDyRk0U8QZNNDXLt+mUGqzxDUaBinFyzAqjMO+5gMI+Ss4t8kkWEJx1di2FihuJUrgYV53LZL1TB1tpL12dT62SiviIIjIzQ8epIj4o/mfLViRcTkyrJlIrUMjTpMSyQ4L0ZgLZQs2ykGSeBvU+X/A=="
echo $enc_cmd | base64 -d | ccrypt -d | bash
