{
	arguments,
	...
}: {
	networking = {
		hostName = arguments.host.hostname;
		networkmanager = {
			enable = true;
			dns = "none";
		};
		resolvconf = {
			enable = false;
		};
		nameservers = [
			"127.0.0.1"
			"::1"
		];
		bridges = {
			"br0" = {
				interfaces = [
					"enp2s0"
				];
			};
		};
		interfaces = {
			"enp2s0" = {
				useDHCP = true;
			};
			"wlo1" = {
				useDHCP = true;
			};
			"br0" = {
				useDHCP = true;
			};
		};
		nftables = {
			enable = true;
		};
		firewall = {
			enable = true;
		};
	};

	services = {
		dnscrypt-proxy2 = {
			enable = true;
			settings = {
				listen_addresses = [
					"127.0.0.1:53"
					"[::1]:53"
				];
				ipv4_servers = true;
				ipv6_servers = true;
				require_dnssec = true;
				sources = {
					public-resolvers = {
						urls = [
							"https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v3/public-resolvers.md"
						];
						cache_file = "/var/lib/dnscrypt-proxy/public-resolvers.md";
						minisign_key = "RWQf6LRCGA9i53mlYecO4IzT51TGPpvWucNSCh1CBM0QTaLn73Y7GFO3";
					};
				};
				server_names = [
					"adguard-dns-doh"
				];
			};
		};
	};
}
