class affi_formulaire {
	idd = 072202;
	name = "affi_formulaire";
	author = "John";

	class controlsbackground {
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 082202;
			x = 0.445859 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.201094 * safezoneW;
			h = 0.528 * safezoneH;
		};
	};

	class controls {
		class RscListbox_1500: RscListbox
		{
			idc = 092202;
			onLBSelChanged = "[4] spawn john_fnc_form;";
			x = 0.34918 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.0889453 * safezoneW;
			h = 0.528 * safezoneH;
		};
	};
};
