-- blueprint-browser

workspace("Blueprint.Browser")
    configurations { "Debug", "Release" }
    location(_ACTION)

    configuration( "Debug" )
        targetdir( "../output/bin/Debug" )
        objdir( "../output/obj" )

    configuration( "Release" )
        targetdir( "../output/bin/Release" )
        objdir( "../output/obj" )

project("Blueprint.Browser")
    kind("ConsoleApp")
    language("C#")

    files { "../source/**.cs" }

    links {
        "System.dll",
    }
