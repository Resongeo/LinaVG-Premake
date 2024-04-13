project "LinaVG"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"
    warnings "off"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    dependson { "FreeType" }

    files
    {
        "src/**.cpp",
        "include/**.hpp",
    }

    includedirs
    {
        "include/",
        "Dependencies/FreeType/include/",
    }

    libdirs
    {
        "Dependencies/FreeType/lib/",
    }

    links
    {
        "FreeType"
    }

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
    filter ""
    
    filter "configurations:Release"
		runtime "Release"
        symbols "off"
        optimize "Full"
    filter ""

include "Dependencies/FreeType"