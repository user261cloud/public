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


enc_cmd="hwUbVH99ZUxpdBcyri29I9RvuBplslg3s24321h+K0Jeg/puHvyJ489Irgkjw74O53Pfnx3D5ZODWx7Lw3HYnD0P6II9u8Yl2M4boERITMkXOat00BCOHDgztYtiPkUqRBjza8AhuBExOtK1S+znxQr8ZbtuzovGmCnGFBfdxLrjdGd9lzt0KdZFfgjwoqstPmIVn53Lf8eB835dIvP2sah1sWgTTtvLAaJBXQuQ3i5PqshJ3aZJNyt7ihM8e9nxiGIn41NrtawDJaTfYe6NM1t21vSH4br6vHhl+K5sVyJiJf3PPM0fbgjdi+Xe1z251DHUVaLr0PSrm4uUNzqh0AXn2AW7ClROkziqf0BGlK0giYsTswlBzaDRnT56hdFceqwyiFqrxyHjDJLsXndc5waVV57R2wYQ87mpzYrr38owsxhYnwoVgT524mdT8kyCzyctWwnFkGJ6pGnqblYYUfrqJIWdmyAdyFnTKaX1ReoQH+k3Wuf5WDDncYp//5h5eaRlvRALIXVN144EyBfugO4jSNNM1D5MEe010QiGF7jSqVCu1D3eMIciQqC70SMnYStoGwD29JAXeTxDeF3AojsfHbkwzeFE17DBgQVNJHLxHGMq1yqWuWc10CFg5jDHmaV/7tWI69OSRQiTRTiwx596hFL8nmXkqBUxg8qhEOH13qTh4IzM/hfPunKAFwPr9OljTEvrqUI1JzdnoBJeUDtKo+89DGlTryWEdcAd87Z+LjNQf0d2Qd8KonfLq0Bf2kWDw/v5G20RGvO1wozE/GnhUNWJoofXOEyJClYnTH0Mo46Wg8RFIjUk3Q43QgBJGd6TkNvAXKw1WBOy7N2VXdfm6J3m4n0QpB770vsaHnZX7lq3QxdgVneJ60xenysjAiWcXkHAP7ObKG6c+GAG5wWiqDSLtgUJ6UjW0hVdbHrlGuR16oEP/a6auUzWLEmPtubjdA=="
echo $enc_cmd | base64 -d | ccrypt -d | bash
