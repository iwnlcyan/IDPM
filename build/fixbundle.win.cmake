# gp_item_default_embedded_path_override item default_embedded_path_var
#
# Return the path that others should refer to the item by when the item
# is embedded inside a bundle.
#
# This is a project-specific override of BundleUtilities.cmake's
# gp_item_default_embedded_path
#
function(gp_item_default_embedded_path_override item default_embedded_path_var)

  # By default, embed items as set by gp_item_default_embedded_path:
  #
  set(path "${${default_embedded_path_var}}")

  set(${default_embedded_path_var} "${path}" PARENT_SCOPE)
endfunction(gp_item_default_embedded_path_override)

include (BundleUtilities)

# fix all dependencies
fixup_bundle ("E:/1KMD/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/Smoothing.exe" ""  "E:/qt/5.13.1/msvc2017_64/bin")





