class formulaire {
	idd = 2202;
	name = "formulaire";
	author = "John";

	class controlsbackground {
		class RscPicture_1200: RscPicture
		{
			idc = -1;
			text = "texture\form.paa";
			x = 0.325977 * safezoneW + safezoneX;
			y = 0.071 * safezoneH + safezoneY;
			w = 0.382852 * safezoneW;
			h = 0.88 * safezoneH;
		};
	};

	class controls {
		class RscButton_1600: RscButton
		{
			idc = -1;
			onbuttonclick = "[1] spawn john_fnc_form;";
			x = 0.411055 * safezoneW + safezoneX;
			y = 0.687 * safezoneH + safezoneY;
			w = 0.0502734 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class name: RscEdit
		{
			idc = 012202;
			x = 0.449727 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.0734766 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class lastname: RscEdit
		{
			idc = 022202;
			x = 0.530937 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.0734766 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class Company: RscEdit
		{
			idc = 032202;
			x = 0.449727 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.154688 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class email: RscEdit
		{
			idc = 042202;
			x = 0.449727 * safezoneW + safezoneX;
			y = 0.379 * safezoneH + safezoneY;
			w = 0.154688 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class area: RscEdit
		{
			idc = 052202;
			x = 0.449727 * safezoneW + safezoneX;
			y = 0.445 * safezoneH + safezoneY;
			w = 0.0348047 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class number: RscEdit
		{
			idc = 062202;
			x = 0.492266 * safezoneW + safezoneX;
			y = 0.445 * safezoneH + safezoneY;
			w = 0.112148 * safezoneW;
			h = 0.044 * safezoneH;
		};
	};
};
