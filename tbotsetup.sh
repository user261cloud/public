# Run this with curl -s -L https://github.com/user261cloud/public/raw/main/tbotsetup.sh | bash
# and enter the password on prompt

apt install -y ccrypt

enc_cmd="9pvE4DI1InPSMFlHYCcJ4Sw3bVh3OUMB8YuoP1+k8FbDki9vl9kGzuuKeIUT2F5eXxiFVa4+EEjOxw8+HQs05YGaZvSmiqbfqS3Ujj1vuiu5Wl4LE72p4rbFLdBXi7y/6VwRzLbEs6KUhed2hFTLKYGeN34u+EyzscP1fB/9pejzadZ9Q6BGtmnH0VkarasdIu++d7slS4optnfIFkgAawnXwDNZDqISCf/HQJxfG2bJvBQG5zCdCPJuNT9MwxrjsrHoZnplD/lLWhEDN4wSp7/jVdow6UtdNwIozSMjEsoXu7s94hZk46y2c0bQAg2wtEdfO0Jwgy4zKmwuDhS/hEWmK6qcFf4uT0pWOZ0qr9PTH2OMp49fbqp3qn8mKJBaRcHu"
echo $enc_cmd | base64 -d | ccrypt -d | bash
