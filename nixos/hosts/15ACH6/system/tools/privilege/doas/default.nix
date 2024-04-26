{
	arguments,
	...
}: {
	security = {
		doas = {
			enable = true;
			extraRules = [
				{
					groups = [
						arguments.host.users.superuser.groupname
					];
					persist = true;
				}
			];
		};
	};
}
