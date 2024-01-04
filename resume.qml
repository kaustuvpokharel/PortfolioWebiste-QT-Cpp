import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page {
    background: Rectangle {
        color: "#FFFFFF"
    }

    Flickable
    {
        anchors.fill: parent
        contentWidth: parent.width // Adjust contentWidth based on your needs
        contentHeight: 2500

        Text {
            id: name
            text: qsTr("This is resume page")
        }
    }
}
