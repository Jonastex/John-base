class telecomande {
	idd = 102202;
	name = "telecomande";
	author = "John";
	onLoad = "uiNamespace setVariable ['telecomande',_this select 0];";
	onunLoad = "uiNamespace setVariable ['telecomande',nil];";
	duration = 9999;


	class controlsbackground {
		class RscPicture_1200: RscPicture
		{
			idc = 112202;
			text = "#(rgb,1,1,1)color(0.5,0.5,0.5,1)";
			x = 0.182891 * safezoneW + safezoneX;
			y = 0.423 * safezoneH + safezoneY;
			w = 0.0657422 * safezoneW;
			h = 0.132 * safezoneH;
		};
		class RscPicture_1201: RscPicture
		{
			idc = 122202;
			text = "#(rgb,1,1,1)color(0.5,0.5,0.5,1)";
			x = 0.182891 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.0657422 * safezoneW;
			h = 0.121 * safezoneH;
		};
	};

	class controls {

	};
};