import QtQuick
import QtQuick.Controls

Window {
    id: main
    width: 1920
    height: 2000
    visible: true
    title: qsTr("PortFolio " +height +" x "+width)

    StackView
    {
        id: loader
        anchors.fill: parent
        initialItem: "qrc:/WEBSITE/UI/pages/home.qml"
    }
}
