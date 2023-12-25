import QtQuick
import QtQuick.Controls
import QtQuick.Layouts


Page {
    Flickable
    {
        anchors.fill: parent
        contentWidth: parent.width // Adjust contentWidth based on your needs
        contentHeight: resView.implicitHeight
    }
}
