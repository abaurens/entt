-- entt

project "entt"
  kind "None"
  language "C++"
  cppdialect "C++17"
  systemversion "latest"

  targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
  objdir ("%{wks.location}/build/" .. outputdir .. "%{prj.name}")

  IncludeDir["entt"] = "%{wks.location}/libs/entt/src"

  includedirs {}

  files {
    "premake5.lua",
    "src/**.hpp",
    "src/**.h",
  }

  -- enables natvis extensions for visual studio
  filter "system:windows"
    files {
      "natvis/**.natvis"
    }
