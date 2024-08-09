import QtQuick 2.15
import QtQuick.Layouts
import "../components"

//@author Kaustuv Pokharel
//Component: Header



Rectangle {
    id: headerBar

    anchors {
        horizontalCenter: parent.horizontalCenter
        top: parent.top
        topMargin: 35
    }

    color: "#313131"
    width: parent.width * 0.9
    height: Math.max(75 * (width / 1450), 30)
    radius: 50

    RowLayout {
        id: textLayout
        anchors.centerIn: parent
        spacing: Math.max(headerBar.width / 25, 5)

        Text {
            id: homeN
            text: "Home"
            color: "#F2F2F2"

            font
            {
                family: "poppins"
                styleName: "Light"
                pixelSize: Math.max(headerBar.width * 0.015, 12)
            }

            MouseArea {
                id: homeHeaderArea
                anchors.fill: parent
                propagateComposedEvents: true
                hoverEnabled: true
                acceptedButtons: Qt.LeftButton
                cursorShape: Qt.PointingHandCursor

                onClicked: console.log("Home button clicked: Test case")

                onEntered: {
                    homeN.color = "#628935";
                    homeN.font.styleName = "Medium";
                }

                onExited: {
                    homeN.color = "#F2F2F2";
                    homeN.font.styleName = "Light";
                }
            }
        }

        Text {
            id: aboutN
            text: "About"
            color: "#F2F2F2"

            font
            {
                family: "poppins"
                styleName: "Light"
                pixelSize: Math.max(headerBar.width * 0.015, 12)
            }

            MouseArea {
                id: aboutHeaderArea
                anchors.fill: parent
                propagateComposedEvents: true
                hoverEnabled: true
                acceptedButtons: Qt.LeftButton
                cursorShape: Qt.PointingHandCursor

                onClicked: {
                    loader.push("qrc:/WEBSITE/about.qml")
                    console.log("About button clicked: Test case")
                }

                onEntered: {
                    aboutN.color = "#628935";
                    aboutN.font.styleName = "Medium";
                }

                onExited: {
                    aboutN.color = "#F2F2F2";
                    aboutN.font.styleName = "Light";
                }
            }
        }

        Text {
            id: nameLogo
            text: "<span>Kaustuv <font color='#628935'>Pokharel</font></span>"
            color: "#F2F2F2"

            font
            {
                family: nautigal.name
                pixelSize: Math.max(headerBar.width / 25, 15)
            }
        }

        Text {
            id: resumeN
            text: "Resume"
            color: "#F2F2F2"

            font
            {
                family: "poppins"
                styleName: "Light"
                pixelSize: Math.max(headerBar.width * 0.015, 12)
            }

            MouseArea {
                id: resumeHeaderArea
                anchors.fill: parent
                propagateComposedEvents: true
                hoverEnabled: true
                acceptedButtons: Qt.LeftButton
                cursorShape: Qt.PointingHandCursor

                onClicked: {
                    loader.push("qrc:/WEBSITE/resume.qml")
                    console.log("Resume button clicked: Test case")
                }

                onEntered: {
                    resumeN.color = "#628935";
                    resumeN.font.styleName = "Medium";
                }

                onExited: {
                    resumeN.color = "#F2F2F2";
                    resumeN.font.styleName = "Light";
                }
            }
        }

        Text {
            id: projectN
            text: "Project"
            color: "#F2F2F2"

            font
            {
                family: "poppins"
                styleName: "Light"
                pixelSize: Math.max(headerBar.width * 0.015, 12)
            }

            MouseArea {
                id: projectHeaderArea
                anchors.fill: parent
                propagateComposedEvents: true
                hoverEnabled: true
                acceptedButtons: Qt.LeftButton
                cursorShape: Qt.PointingHandCursor

                onClicked: {
                    loader.push("qrc:/WEBSITE/UI/pages/project.qml")
                    console.log("Project button clicked: Test case")
                }

                onEntered: {
                    projectN.color = "#628935";
                    projectN.font.styleName = "Medium";
                }

                onExited: {
                    projectN.color = "#F2F2F2";
                    projectN.font.styleName = "Light";
                }
            }
        }
    }
}
