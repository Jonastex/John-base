class CfgPatches
{
	class John_serveur
	{
		units[]={"C_man_1"};
		weapons[]={};
		requiredAddons[]={};
		fileName="John_serveur.pbo";
		author ="John";
	};
};

class CfgFunctions {
	class john_fonction {
		tag = "JS";

		class EXTDB {
			file = "\John_serveur\core\extdb";
			class server_init {};
			class request {};
		};

		class init {
			file = "\John_serveur\core";
			class init_player {};
		};

		class function {
			file = "\John_serveur\core\Function"; 
			class form {};
		}
	};
};