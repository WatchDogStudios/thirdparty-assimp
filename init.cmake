### Assimp
set (NS_3RDPARTY_ASSIMP_SUPPORT ON CACHE BOOL "Whether to add support for the asset importer.")
mark_as_advanced(FORCE NS_3RDPARTY_ASSIMP_SUPPORT)

set (NS_3RDPARTY_ASSIMP_DRACO_SUPPORT OFF CACHE BOOL "Whether to include Draco mesh compression support in AssImp.")
mark_as_advanced(FORCE NS_3RDPARTY_ASSIMP_DRACO_SUPPORT)

macro(ns_requires_assimp)
	
	ns_requires(NS_3RDPARTY_ASSIMP_SUPPORT)
	ns_requires_one_of(NS_CMAKE_PLATFORM_LINUX NS_CMAKE_PLATFORM_WINDOWS_DESKTOP)

endmacro()
