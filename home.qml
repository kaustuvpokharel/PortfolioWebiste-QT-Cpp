import QtQuick
import QtQuick.Controls

Page {
    background: Rectangle {
        color: "#FFFFFF"
    }

    Rectangle
    {
        id: headerBar
        color: "#313131"
        width: 1200
        height: 75
        radius: 50
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 35


        Text
        {
            id: homeN
            text: "Home"
            color: "#FFFFFF"
            anchors.verticalCenter: parent.verticalCenter
            font.family: "poppins"
            font.styleName: "Light"
            font.pixelSize: 15

            x: 70

            MouseArea
            {
                id: homeHeaderArea
                anchors.fill: parent
                propagateComposedEvents: true
                hoverEnabled: true

                //just to check if the home button is clicked
                onClicked: console.log("Home button clicked: Test case")

                onEntered: {
                    homeN.color = "#628935";
                    homeN.font.styleName = "Medium";
                }

                onExited: {
                    homeN.color = "#FFFFFF";
                    homeN.font.styleName = "Light";
                }
            }

        }

        Text
        {
            id: aboutN
            text: "About"
            color: "#FFFFFF"
            anchors.verticalCenter: parent.verticalCenter
            font.family: "poppins"
            font.styleName: "Light"
            font.pixelSize: 15

            x: 70 * 3

            MouseArea
            {
                id: aboutHeaderArea
                anchors.fill: parent
                propagateComposedEvents: true
                hoverEnabled: true

                //just to check if the home button is clicked
                onClicked: console.log("About button clicked: Test case")

                onEntered: {
                    aboutN.color = "#628935";
                    aboutN.font.styleName = "Medium";
                }

                onExited: {
                    aboutN.color = "#FFFFFF";
                    aboutN.font.styleName = "Light";
                }
            }
        }


        Text
        {
            id: nameLogo
            text: "<span>Kaustuv <font color='#628935'>Pokharel</font></span>"
            color: "#FFFFFF"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            FontLoader
            {
                id: nautigal
                source: "qrc:/Nautigal"
            }

            font.family : nautigal.name
            font.pixelSize: 40
        }

        Text
        {
            id: resumeN
            text: "Resume"
            color: "#FFFFFF"
            anchors.verticalCenter: parent.verticalCenter
            font.family: "poppins"
            font.styleName: "Light"
            font.pixelSize: 15

            x: 70 * 13

            MouseArea
            {
                id: resumeHeaderArea
                anchors.fill: parent
                propagateComposedEvents: true
                hoverEnabled: true

                //just to check if the home button is clicked
                onClicked: console.log("Resume button clicked: Test case")

                onEntered: {
                    resumeN.color = "#628935";
                    resumeN.font.styleName = "Medium";
                }

                onExited: {
                    resumeN.color = "#FFFFFF";
                    resumeN.font.styleName = "Light";
                }
            }

        }

        Text
        {
            id: projectN
            text: "Resume"
            color: "#FFFFFF"
            anchors.verticalCenter: parent.verticalCenter
            font.family: "poppins"
            font.styleName: "Light"
            font.pixelSize: 15

            x: 70 * 15

            MouseArea
            {
                id: projectHeaderArea
                anchors.fill: parent
                propagateComposedEvents: true
                hoverEnabled: true

                //just to check if the home button is clicked
                onClicked: console.log("Project button clicked: Test case")

                onEntered: {
                    projectN.color = "#628935";
                    projectN.font.styleName = "Medium";
                }

                onExited: {
                    projectN.color = "#FFFFFF";
                    projectN.font.styleName = "Light";
                }
            }
        }
    }

    Rectangle
    {
        id: label1
        width: 300
        height: 35
        border.color: "#313131"
        border.width: 1
        anchors.top : headerBar.bottom
        anchors.topMargin: 70
        anchors.horizontalCenter: parent.horizontalCenter
        radius: 30

        Text {
            id: label1Text
            text: qsTr("<html>Hello, this website is built on <b>C++</b></html>")
            font.family: "poppins"
            font.styleName: "Medium"
            font.pixelSize: 15
            color: "#313131"
            anchors.centerIn: parent
        }
    }

    Text
    {
        id: label2Text
        text: qsTr("<html>I'm <font color='#628935'; text-align: center>Kaustuv</font>,<br />Software Engineering Student</html>")
        FontLoader
        {
            id: philosopher
            source: "qrc:/PhiloBold"
        }
        font.family: philosopher.name
        font.pixelSize: 70
        color: "#313131"

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: label1.bottom
        anchors.topMargin: 20
        horizontalAlignment: Text.AlignHCenter
    }

}
