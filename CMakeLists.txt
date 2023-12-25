cmake_minimum_required(VERSION 3.16)

project(WEBSITE VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appWEBSITE
    main.cpp
)

qt_add_qml_module(appWEBSITE
    URI WEBSITE
    VERSION 1.0
    QML_FILES main.qml
    QML_FILES home.qml
    QML_FILES about.qml
    QML_FILES resume.qml
    QML_FILES project.qml
    RESOURCES Fonts.qrc
    RESOURCES img.qrc
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appWEBSITE PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appWEBSITE
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appWEBSITE
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appWEBSITE
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
