{
	...
}: {
	programs = {
		nixvim = {
			autoCmd = [
				{
					event = [
						"InsertEnter"
					];
					command = "TwilightEnable";
				}
				{
					event = [
						"InsertLeave"
					];
					command = "TwilightDisable";
				}
			];
		};
	};
}
