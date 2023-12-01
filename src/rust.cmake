# We include Corrosion inline here, but ideally in a project with
# many dependencies we would need to install Corrosion on the system.
# See instructions on https://github.com/AndrewGaspar/corrosion#cmake-install
# Once done, uncomment this line:

find_package(Corrosion REQUIRED)

set(CRATE_NAMES "native" "native_2")
foreach(CRATE_NAME ${CRATE_NAMES})
    corrosion_import_crate(MANIFEST_PATH ../${CRATE_NAME}/Cargo.toml CRATES ${CRATE_NAME})
    target_link_libraries(${BINARY_NAME} PRIVATE ${CRATE_NAME})
    list(APPEND PLUGIN_BUNDLED_LIBRARIES $<TARGET_FILE:${CRATE_NAME}-shared>)
endforeach()
