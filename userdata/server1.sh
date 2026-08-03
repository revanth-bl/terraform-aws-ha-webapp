#!/bin/bash

apt-get update -y
apt-get install -y apache2

cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Web Server 1</title>

<style>
*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Segoe UI,Arial,sans-serif;
}

body{
background:#0f172a;
color:white;
display:flex;
justify-content:center;
align-items:center;
height:100vh;
}

.card{
width:760px;
background:#1e293b;
border-radius:16px;
padding:40px;
box-shadow:0 20px 60px rgba(0,0,0,.45);
border:1px solid #334155;
}

h1{
font-size:40px;
color:#38bdf8;
margin-bottom:10px;
}

.subtitle{
color:#cbd5e1;
margin-bottom:30px;
}

.grid{
display:grid;
grid-template-columns:1fr 1fr;
gap:18px;
margin-top:20px;
}

.item{
background:#0f172a;
padding:18px;
border-radius:10px;
border-left:5px solid #38bdf8;
}

.label{
font-size:13px;
color:#94a3b8;
margin-bottom:6px;
}

.value{
font-size:20px;
font-weight:bold;
}

.status{
color:#22c55e;
}

.footer{
margin-top:35px;
text-align:center;
color:#94a3b8;
font-size:15px;
}
</style>

</head>

<body>

<div class="card">

<h1>🚀 AWS High Availability Web Application</h1>

<p class="subtitle">
Provisioned entirely using Terraform
</p>

<div class="grid">

<div class="item">
<div class="label">Active Server</div>
<div class="value">🖥 Web Server 1</div>
</div>

<div class="item">
<div class="label">Cloud Platform</div>
<div class="value">☁ Amazon EC2</div>
</div>

<div class="item">
<div class="label">Infrastructure</div>
<div class="value">📦 Terraform</div>
</div>

<div class="item">
<div class="label">Load Balancer</div>
<div class="value">⚖ AWS ALB</div>
</div>

<div class="item">
<div class="label">Region</div>
<div class="value">🌎 us-east-1</div>
</div>

<div class="item">
<div class="label">Status</div>
<div class="value status">🟢 Healthy</div>
</div>

</div>

<div class="footer">
Refresh this page to watch the AWS Application Load Balancer
switch between Web Server 1 and Web Server 2.
</div>

</div>

</body>
</html>
EOF

systemctl enable apache2
systemctl restart apache2