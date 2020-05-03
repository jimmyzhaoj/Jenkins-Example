workspace "HelloWorld"
	configuration {"Debug","Release"}

Project "HelloWorld"
	location "HelloWorld"
	kind "ConsoleApp"
	Language "C++"
	targetdir "bin/%{cfg.buildcfg}"

	files {"HelloWorld/src/**.h", "HelloWorld/src/**.cpp"}

	filter "Configuration:Debug"
		define {"Debug"}
		symbol "On"

	filter "Configuration:Release"
		define {"NDEBUG"}
		optimze "On"	
