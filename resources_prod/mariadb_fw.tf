resource "azurerm_mariadb_firewall_rule" "adapt-vilnius" {
  name                = "adapt-vilnius"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "88.119.96.225"
  end_ip_address      = "88.119.96.225"
}

resource "azurerm_mariadb_firewall_rule" "adapt_office" {
  name                = "adapt-office"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "88.119.49.13"
  end_ip_address      = "88.119.49.13"
}

resource "azurerm_mariadb_firewall_rule" "clientip1" {
  name                = "clientip1"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "80.70.54.6"
  end_ip_address      = "80.70.54.6"
}

resource "azurerm_mariadb_firewall_rule" "clientip2" {
  name                = "clientip2"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "80.70.52.6"
  end_ip_address      = "80.70.52.6"
}

resource "azurerm_mariadb_firewall_rule" "clientipaddress-2020-05-15-14-29" {
  name                = "clientipaddress-2020-05-15-14-29"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "78.56.214.72"
  end_ip_address      = "78.56.214.72"
}

resource "azurerm_mariadb_firewall_rule" "clientipaddress-2020-10-13_9-13-25" {
  name                = "clientipaddress-2020-10-13-9-13-25"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "84.15.186.168"
  end_ip_address      = "84.15.186.168"
}

resource "azurerm_mariadb_firewall_rule" "clientipaddress-2020-3-18_14-9-8" {
  name                = "clientipaddress-2020-3-18-14-9-8"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "78.56.50.43"
  end_ip_address      = "78.56.50.43"
}

resource "azurerm_mariadb_firewall_rule" "clientipaddress-2020-3-18_20-23-0" {
  name                = "clientipaddress-2020-3-18-20-23-0"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "78.56.4.215"
  end_ip_address      = "78.56.4.215"
}

resource "azurerm_mariadb_firewall_rule" "clientipaddress-2020-3-18_9-23-0" {
  name                = "clientipaddress-2020-3-18-9-23-0"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "78.31.190.231"
  end_ip_address      = "78.31.190.231"
}

resource "azurerm_mariadb_firewall_rule" "clientipaddress-2020-3-24_17-51-0" {
  name                = "clientipaddress-2020-3-24-17-51-0"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "51.136.74.66"
  end_ip_address      = "51.136.74.66"
}

resource "azurerm_mariadb_firewall_rule" "clientipaddress-2020-3-24_17-53-2" {
  name                = "clientipaddress-2020-3-24-17-53-2"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "78.56.83.57"
  end_ip_address      = "78.56.83.57"
}

resource "azurerm_mariadb_firewall_rule" "clientipaddress-2020-6-4_0-37-2" {
  name                = "clientipaddress-2020-6-4-0-37-2"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "188.69.213.75"
  end_ip_address      = "188.69.213.75"
}

resource "azurerm_mariadb_firewall_rule" "db-backup-vm" {
  name                = "db-backup-vm"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "20.93.136.16"
  end_ip_address      = "20.93.136.16"
}

resource "azurerm_mariadb_firewall_rule" "github" {
  name                = "github"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "20.73.142.224"
  end_ip_address      = "20.73.142.224"
}

resource "azurerm_mariadb_firewall_rule" "ja" {
  name                = "ja"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "88.216.150.86"
  end_ip_address      = "88.216.150.86"
}

resource "azurerm_mariadb_firewall_rule" "julija-sodas-whitelist" {
  name                = "julija-sodas-whitelist"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "90.138.70.191"
  end_ip_address      = "90.138.70.191"
}

resource "azurerm_mariadb_firewall_rule" "justas" {
  name                = "justas"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "84.46.239.97"
  end_ip_address      = "84.46.239.97"
}

resource "azurerm_mariadb_firewall_rule" "justas-v2" {
  name                = "justas-v2"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "86.38.36.212"
  end_ip_address      = "86.38.36.212"
}

resource "azurerm_mariadb_firewall_rule" "justas-v3" {
  name                = "justas-v3"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "89.116.98.214"
  end_ip_address      = "89.116.98.214"
}

resource "azurerm_mariadb_firewall_rule" "karolis" {
  name                = "karolis"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "83.179.32.198"
  end_ip_address      = "83.179.32.198"
}

resource "azurerm_mariadb_firewall_rule" "kube" {
  name                = "kube"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "20.50.23.90"
  end_ip_address      = "20.50.23.90"
}

resource "azurerm_mariadb_firewall_rule" "lina-kazkur" {
  name                = "lina-kazkur"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "78.157.64.212"
  end_ip_address      = "78.157.64.212"
}

resource "azurerm_mariadb_firewall_rule" "lina-ofisas" {
  name                = "lina-ofisas"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "213.252.195.5"
  end_ip_address      = "213.252.195.5"
}

resource "azurerm_mariadb_firewall_rule" "man_client1" {
  name                = "man_client1"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "52.5.142.59"
  end_ip_address      = "52.5.142.59"
}

resource "azurerm_mariadb_firewall_rule" "man_client2" {
  name                = "man_client2"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "34.226.132.221"
  end_ip_address      = "34.226.132.221"
}

resource "azurerm_mariadb_firewall_rule" "man_client3" {
  name                = "man_client3"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "52.54.43.157"
  end_ip_address      = "52.54.43.157"
}

resource "azurerm_mariadb_firewall_rule" "new_office" {
  name                = "new_office"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "88.119.94.17"
  end_ip_address      = "88.119.94.17"
}

resource "azurerm_mariadb_firewall_rule" "ofice" {
  name                = "ofice"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "213.252.195.5"
  end_ip_address      = "213.252.195.5"
}

resource "azurerm_mariadb_firewall_rule" "office" {
  name                = "office"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "88.119.159.5"
  end_ip_address      = "88.119.159.5"
}

resource "azurerm_mariadb_firewall_rule" "sandra" {
  name                = "sandra"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "188.69.192.202"
  end_ip_address      = "188.69.192.202"
}

resource "azurerm_mariadb_firewall_rule" "sandra2" {
  name                = "sandra2"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "91.187.191.201"
  end_ip_address      = "91.187.191.201"
}

resource "azurerm_mariadb_firewall_rule" "sandra3" {
  name                = "sandra3"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "78.56.247.80"
  end_ip_address      = "78.56.247.80"
}

resource "azurerm_mariadb_firewall_rule" "sandra4" {
  name                = "sandra4"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "213.159.40.242"
  end_ip_address      = "213.159.40.242"
}

resource "azurerm_mariadb_firewall_rule" "sandra5" {
  name                = "sandra5"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "78.56.247.80"
  end_ip_address      = "78.56.247.80"
}

resource "azurerm_mariadb_firewall_rule" "whitelist" {
  name                = "whitelist"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "78.31.189.227"
  end_ip_address      = "78.31.189.227"
}

resource "azurerm_mariadb_firewall_rule" "whitelist10" {
  name                = "whitelist10"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "188.69.198.190"
  end_ip_address      = "188.69.198.190"
}

resource "azurerm_mariadb_firewall_rule" "whitelist101" {
  name                = "whitelist101"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "213.159.56.95"
  end_ip_address      = "213.159.56.95"
}

resource "azurerm_mariadb_firewall_rule" "whitelist11" {
  name                = "whitelist11"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "78.61.196.174"
  end_ip_address      = "78.61.196.174"
}

resource "azurerm_mariadb_firewall_rule" "whitelist111" {
  name                = "whitelist111"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "80.70.54.5"
  end_ip_address      = "80.70.54.5"
}

resource "azurerm_mariadb_firewall_rule" "whitelist112" {
  name                = "whitelist112"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "80.70.52.5"
  end_ip_address      = "80.70.52.5"
}

resource "azurerm_mariadb_firewall_rule" "whitelist113" {
  name                = "whitelist113"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "46.126.32.107"
  end_ip_address      = "46.126.32.107"
}

resource "azurerm_mariadb_firewall_rule" "whitelist2" {
  name                = "whitelist2"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "78.31.189.227"
  end_ip_address      = "78.31.189.227"
}

resource "azurerm_mariadb_firewall_rule" "whitelist3" {
  name                = "whitelist3"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "5.20.208.27"
  end_ip_address      = "5.20.208.27"
}

resource "azurerm_mariadb_firewall_rule" "whitelist4" {
  name                = "whitelist4"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "78.61.252.91"
  end_ip_address      = "78.61.252.91"
}

resource "azurerm_mariadb_firewall_rule" "whitelist5" {
  name                = "whitelist5"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "185.193.26.110"
  end_ip_address      = "185.193.26.110"
}

resource "azurerm_mariadb_firewall_rule" "whitelist6" {
  name                = "whitelist6"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "78.56.77.18"
  end_ip_address      = "78.56.77.18"
}

resource "azurerm_mariadb_firewall_rule" "whitelist7" {
  name                = "whitelist7"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "80.70.54.5"
  end_ip_address      = "80.70.54.5"
}

resource "azurerm_mariadb_firewall_rule" "whitelist8" {
  name                = "whitelist8"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "80.70.52.5"
  end_ip_address      = "80.70.52.5"
}

resource "azurerm_mariadb_firewall_rule" "whitelist9" {
  name                = "whitelist9"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "192.104.20.235"
  end_ip_address      = "192.104.20.235"
}

resource "azurerm_mariadb_firewall_rule" "wl1" {
  name                = "wl1"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "80.70.54.96"
  end_ip_address      = "80.70.54.96"
}

resource "azurerm_mariadb_firewall_rule" "wl2" {
  name                = "wl2"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "80.70.52.96"
  end_ip_address      = "80.70.52.96"
}

resource "azurerm_mariadb_firewall_rule" "wl3" {
  name                = "wl3"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "90.140.80.32"
  end_ip_address      = "90.140.80.32"
}

resource "azurerm_mariadb_firewall_rule" "wl4" {
  name                = "wl4"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "88.216.137.246"
  end_ip_address      = "88.216.137.246"
}

resource "azurerm_mariadb_firewall_rule" "wx1" {
  name                = "wx1"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "192.104.20.222"
  end_ip_address      = "192.104.20.222"
}

resource "azurerm_mariadb_firewall_rule" "wx11" {
  name                = "wx11"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "208.127.1.1"
  end_ip_address      = "208.127.255.255"
}

resource "azurerm_mariadb_firewall_rule" "wx12" {
  name                = "wx12"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "66.159.1.1"
  end_ip_address      = "66.159.255.255"
}

resource "azurerm_mariadb_firewall_rule" "wx13" {
  name                = "wx13"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "137.83.1.1"
  end_ip_address      = "137.83.255.255"
}

resource "azurerm_mariadb_firewall_rule" "wx14" {
  name                = "wx14"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "34.103.182.202"
  end_ip_address      = "34.103.182.202"
}

resource "azurerm_mariadb_firewall_rule" "wx15" {
  name                = "wx15"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "34.99.238.18"
  end_ip_address      = "34.99.238.18"
}

resource "azurerm_mariadb_firewall_rule" "wx2" {
  name                = "wx2"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "203.223.178.235"
  end_ip_address      = "203.223.178.235"
}

resource "azurerm_mariadb_firewall_rule" "wx3" {
  name                = "wx3"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "203.223.178.222"
  end_ip_address      = "203.223.178.222"
}

resource "azurerm_mariadb_firewall_rule" "wx4" {
  name                = "wx4"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "219.117.241.226"
  end_ip_address      = "219.117.241.226"
}

resource "azurerm_mariadb_firewall_rule" "wx5" {
  name                = "wx5"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "103.243.18.1"
  end_ip_address      = "103.243.18.1"
}

resource "azurerm_mariadb_firewall_rule" "wx8" {
  name                = "wx8"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "66.159.200.115"
  end_ip_address      = "66.159.200.115"
}

resource "azurerm_mariadb_firewall_rule" "old_demo_kubernetes" {
  name                = "old_demo_kubernetes"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "20.50.23.90"
  end_ip_address      = "20.50.23.90"
}

resource "azurerm_mariadb_firewall_rule" "new_kube_dev" {
  name                = "new_kube_dev"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "20.103.32.19"
  end_ip_address      = "20.103.32.19"
}

resource "azurerm_mariadb_firewall_rule" "Karolis_new" {
  name                = "Karolis_new"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "90.138.58.80"
  end_ip_address      = "90.138.58.80"
}

resource "azurerm_mariadb_firewall_rule" "Aurimas_new" {
  name                = "Aurimas_new"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "78.57.64.120"
  end_ip_address      = "78.57.64.120"
}

resource "azurerm_mariadb_firewall_rule" "Jurgita_new" {
  name                = "Jurgita_new"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "78.60.220.183"
  end_ip_address      = "78.60.220.183"
}

resource "azurerm_mariadb_firewall_rule" "Aurimas_Pok" {
  name                = "Aurimas_Pok"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "78.56.34.74"
  end_ip_address      = "78.56.34.74"
}

resource "azurerm_mariadb_firewall_rule" "sergey" {
  name                = "sergey"
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mariadb_server.man_mariadb.name
  start_ip_address    = "178.54.8.164"
  end_ip_address      = "178.54.8.164"
}