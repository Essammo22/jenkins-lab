tag = ["main",
  "public_subnet_1",
  "private_subnet_1",
  "public_subent_2",
  "private_subnet_2",
  "internet_gt",
  "nat_gateway",
  "web_server_1",
  "backend_1",
  "web_server_2",
  "backend_2"
]
cidr_block = ["10.0.0.0/16",
  "10.0.1.0/24",
  "10.0.2.0/24",
  "10.0.3.0/24",
  "10.0.4.0/24",
  "0.0.0.0/0"
]
dns_hostname     = true
dns_support      = true
availability_zone = ["us-east-1a", "us-east-1b"]
port             = [22, 80, 0, 3306]
instance_type    = "t2.micro"
