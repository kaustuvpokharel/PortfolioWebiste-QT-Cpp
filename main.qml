import QtQuick
import QtQuick.Controls

Window {
    width: 1920
    height: 1080
    visible: true
    title: qsTr("PortFolio")

    StackView
    {
        id: loader
        anchors.fill: parent
        initialItem: "qrc:/WEBSITE/home.qml"
    }
}
