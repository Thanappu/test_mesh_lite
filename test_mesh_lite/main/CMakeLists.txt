idf_build_get_property(target IDF_TARGET)
#set(srcs            app_main.cpp)
cmake_minimum_required(VERSION 3.5)

# path of project
set(proj_dir ../)

# folder lib
set(lib_dir ${proj_dir}/lib)
set(components_dir ${proj_dir}/components)


set(srcs            main.cpp
                    #${proj_dir}/driver/esp_camera.c
					# ${lib_dir}/OV5640_Auto_Focus_for_ESP32_Camera-0.1.1/src/ESP32_OV5640_AF.cpp
					# ${lib_dir}/esp32/camera.cpp
					# ${lib_dir}/esp32/uart.cpp
					# ${lib_dir}/esp32/utility.cpp
					# ${lib_dir}/web/wifi.cpp
					# ${lib_dir}/web/httpd.cpp
					# ${lib_dir}/web/httpd_handler.cpp
                    )
					# ${lib_dir}/esp32/i2c_driver.cpp
					# ${lib_dir}/nb_iot/nb_iot_core.cpp
					# ${lib_dir}/image/preprocess.cpp
					# ${lib_dir}/image/segmentation.cpp
					# ${lib_dir}/image/cropobject.cpp
					# ${lib_dir}/tools/debug.cpp)

set(include_dirs    .
                    #${proj_dir}/driver/include
					# ${proj_dir}/models/ex_mnist_2
					# ${proj_dir}/models/ex_mnist_2/C_coeff
					# ${lib_dir}/esp32
					# ${lib_dir}/nb_iot
					# ${lib_dir}/OV5640_Auto_Focus_for_ESP32_Camera-0.1.1/src
					# ${lib_dir}/image
					# ${lib_dir}/web
                    )

#					${lib_dir}/tools)

idf_component_register(SRCS ${srcs} INCLUDE_DIRS ${include_dirs} REQUIRES ${requires})
target_compile_options(${COMPONENT_LIB} PRIVATE -std=gnu++11)

