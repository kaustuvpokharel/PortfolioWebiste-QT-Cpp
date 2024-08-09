import QtQuick 2.15

//@author Kaustuv Pokharel
//component: Label botton "Hello, this website is built on QT (C++)"

Rectangle
{
    id: label1
    width: Math.max(parent.width * 0.22, 220) //responsive width
    height: Math.max(150 * (width / 1450), 20) //responsive width
    radius: 30
    color: "#F2F2F2"

    border
    {
        color: "#313131"
        width: 1
    }

    anchors
    {
        horizontalCenter: parent.horizontalCenter
        top : headerBar.bottom
        topMargin: Math.max(110 * (parent.width / 2000), 30)

    }

    //Subcomp Text of Parent Rectangle
    Text
    {
        id: label1Text
        text: qsTr("<html>Hello, this website is built on <b>QT (C++)</b></html>")

        font
        {
            family: "poppins"
            styleName: "Medium"
            pixelSize: Math.max(headerBar.width * 0.01, 10)
        }

        color: "#313131"
        anchors.centerIn: parent
    }

    MouseArea
    {
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton
        cursorShape: Qt.PointingHandCursor
        propagateComposedEvents: true
        hoverEnabled: true
        onClicked:
        {
            //console.log("Clicked Cpp, opening github");
            Qt.openUrlExternally("https://github.com/kastuv/PortfolioWebiste-QT-Cpp")
        }

        onEntered:
        {
            label1.color = "#628935";
            label1.border.color = "#628935";
            label1Text.color = "#F2F2F2";
        }
        onExited:
        {
            label1.color = "Transparent"
            label1.border.color = "#313131";
            label1Text.color = "#313131";

        }
    }
}
