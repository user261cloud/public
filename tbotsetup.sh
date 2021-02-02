# Run this with 
#   curl -s -L https://github.com/user261cloud/public/raw/main/tbotsetup.sh | bash
#                         OR
#   export ENC_PASSWORD= ; curl -s -L https://github.com/user261cloud/public/raw/main/tbotsetup.sh | bash
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

ENC_CMD=\
"i5Ss99Od2zQ9K42AROM0HyAQr2tHim5Bx7dnZ5zBQ8ts0nQe52DHFjbxgz28gQ49m/AktrZpAyPAyAUJadNx46IhUx2V6ZLHGy8qyEumhGiGqhKK43K4iehsn9DYT1fnlh4q8qbym+hdIP/xv/NK75llWqoGhZzRy9BpYbyTCzpDsrZzRa0kBFblyXq+pIJ2f12+rIzZOgJIQBX18JiatWiO8osfSnbh/72Aq3KlOz3+jpLONTK/q5lOUNwVV1GCsm9U8jX9qW8SwdGkHRRJvgEGaYjN9NimkRizf8JsLOr05euqFBRLA7BvDuOLycQsUmqnIoC0Dv10/LUnBKe8jGN9iwd6CMd9Q2TOM4USTwVvjnchTC3zwRkKPgyWlONW0G6ahJfkU9/k9gbzKOubSh/8CvCVdy58sviOKOlAj3W2EbJdA5lplOX1wRKMGmKa4G090abjeGVU812p6/FzUZ1KfhCc/PdF8CZlWqhCaTWF03FV6aMVtr+foXk0H4GpJnJn+aa0Mjg2LPOmZZbuoHGrd4oOXQ9AG9y6+rbAQzKcssv1bo9O4ix3VxPEHBgUZmV5uZsTBuJOTvoy49mqO9YswN+hjwpUJZdiiFKHYF5/0xGWCe8nK+CRseyMWCPYApPX2mIXkbgY84HTr7PRTWKaznt/KyMAVIZePzpkK26TeRmjZZ45znAuavgX8m9/sE4nW5lNN0EAs4oeUnyq9lv5nAyz8R6b0VXvg90c3nmVt3Gan+qLNx/6XTnDTHajnKJTlynYMx8fMS2heZsjGo0iP+Fw+wdK5Qk6WCxMF6WqmugEAbz16pNCzVnbYm3rUvH++J2FEU8lKqv2DMY6TIyys6RmvKWz7MQuWRChb3WTa97b2Tl3w6vSZAKXknA3B0KpXucc7te4FvIogMfM7JuuRaU890HWIuPvXK8v7Id77ZyswnOIv9MEkEPJZS+FT9ogYvM7YcqgFaE="

if [ -z "$ENC_PASSWORD" ]; then
  echo $ENC_CMD | base64 -d | ccrypt -d | bash
else
  echo $ENC_CMD | base64 -d | ccrypt -d -E ENC_PASSWORD | bash
fi
