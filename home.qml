import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page
{
    background: Rectangle {
        color: "#FFFFFF"
    }
    height: 2000
    Flickable
    {
        anchors.fill: parent
        contentWidth: parent.width // Adjust contentWidth based on your needs
        contentHeight: Math.max(3500, parent.height)


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
                id: philo
                source: "qrc:/PhiloBold"
            }
            font.family: philo.name
            font.pixelSize: 70
            color: "#313131"

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: label1.bottom
            anchors.topMargin: 20
            horizontalAlignment: Text.AlignHCenter
        }

        Rectangle
        {
            id: cicImg
            height: 800
            width: 800
            radius: 800
            color: "#628935"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: label2Text.bottom
            anchors.topMargin: 200


            Image
            {
                id: myPic
                source: "qrc:/kastuv"
                height: 800
                width: 800
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter
                y: -250
            }
        }

        Rectangle
        {
            id: buttonsImg
            height: 70
            width: 400
            color: "#FFFFFF"
            radius: 70
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: cicImg.verticalCenter
            anchors.verticalCenterOffset: -70

            RowLayout
            {
                id: buttomlayout1
                anchors.centerIn: parent
                Rectangle
                {
                    id: resume
                    Layout.preferredHeight: 60
                    Layout.preferredWidth: 190
                    color: "#628935"
                    radius: 60

                    Text
                    {
                        text: qsTr("Resume")
                        font.family: "Poppins"
                        font.styleName: "Medium"
                        font.pixelSize: 25
                        color: "#FFFFFF"
                        anchors.centerIn: parent
                    }
                }
                Rectangle
                {
                    id: mailMe
                    Layout.preferredHeight: 60
                    Layout.preferredWidth: 190
                    border.color: "#313131"
                    border.width: 2
                    radius: 60

                    Text
                    {
                        text: qsTr("Mail me")
                        font.family: "Poppins"
                        font.styleName: "Medium"
                        font.pixelSize: 25
                        color: "#313131"
                        anchors.centerIn: parent
                    }
                }
            }
        }

        Text
        {
            id: intro
            text: "<html><p>A highly motivated and ambitious sophomore<br />Software Engineering student with a passion<br />for system programming, embedded systems,<br />and software development. Proficient in<br />programming languages such as C/C++/Python.<br />Currently expanding knowledge in QT<br />to deepen expertise.</p></html>"
            color: "#777777"
            font.family: "Poppins"
            font.styleName: "Medium"
            font.pixelSize: 15
            anchors.top: label2Text.bottom
            anchors.topMargin: 200
            anchors.left: parent.left
            anchors.leftMargin: 80
        }

        Text
        {
            text: "\""
            font.family : nautigal.name
            font.pixelSize: 250
            anchors.bottom: intro.top
            anchors.margins: -150
            anchors.left: parent.left
            anchors.leftMargin: 70
            color: "#313131"
        }

        ColumnLayout
        {
            id: introSide
            anchors.top: label2Text.bottom
            anchors.topMargin: 160
            anchors.right: parent.right
            anchors.rightMargin: 80
            spacing: -15

            Image {
                id: stars
                source: "qrc:/stars"
                Layout.alignment: Qt.AlignRight | Qt.AlignTop
                Layout.bottomMargin: -30
                Layout.preferredWidth: 175
                // Layout.preferredHeight: imageContainer.height
                fillMode: Image.PreserveAspectFit
            }

            Text
            {
                text: "5 Years"
                color: "#313131"
                font.family: nautigal.name
                font.styleName: "semiBold"
                font.pixelSize: 80
                Layout.alignment: Qt.AlignRight
            }
            Text
            {
                text: "In Tech"
                color: "#777777"
                font.family: "Poppins"
                font.styleName: "Medium"
                font.pixelSize: 20
                Layout.alignment: Qt.AlignRight
            }

        }

        Rectangle
        {
            id: projectsRect
            width: parent.width
            height: 850
            color: "#313131"
            radius: 50

            anchors.top: cicImg.bottom
            anchors.topMargin: -400

            RowLayout
            {
                id: myp
                anchors.top: parent.top
                anchors.topMargin: 30
                spacing: 350

                Text
                {
                    text: qsTr("<html>My <font color='#628935'>Project</font></html>")
                    font.family: philo.name
                    font.pixelSize: 50
                    color: "#FFFFFF"
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.leftMargin: 50
                    Layout.topMargin: 70
                }

                Text
                {
                    text: qsTr("<html>Browse through a concise showcase of my C++, Python, and hackathon projects,<br />demonstrating technical expertise and innovation.</html>")
                    font.family: "Poppins"
                    font.styleName: "Light"
                    font.pixelSize: 20
                    color: "#FFFFFF"
                    opacity: 0.7
                    Layout.alignment: Qt.AlignRight | Qt.AlignTop
                    Layout.rightMargin: 70
                    Layout.topMargin: 60
                }
            }

            Rectangle
            {
                id: line1
                height:1
                width: 1400
                color: "#FFFFFF"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: myp.bottom
                anchors.topMargin: 30
                opacity: 0.3
            }

            RowLayout
            {
                id: mypshow
                anchors.top: myp.bottom
                anchors.topMargin: 20
                spacing: 20

                Rectangle
                {
                    id: pj1
                    height: 520
                    width: 420
                    color: "#444444"
                    radius: 30
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.leftMargin: 50
                    Layout.topMargin: 80
                    Rectangle
                    {
                        id: linepj1
                        height:1
                        width: parent.width
                        color: "#FFFFFF"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: pj1.top
                        anchors.topMargin: 120
                        opacity: 0.3
                    }
                    Text
                    {
                        text: "FIREWALL.02"
                        font.family: philo.name
                        font.pixelSize: 30
                        color: "#FFFFFF"
                        anchors.bottom: linepj1.top
                        anchors.bottomMargin: 40
                        anchors.left: pj1.left
                        anchors.leftMargin: 25
                    }

                    Rectangle
                    {
                        width: 380
                        height: 300
                        radius: 30
                        anchors.bottom: imgPj1.bottom
                        anchors.horizontalCenter: imgPj1.horizontalCenter
                        anchors.bottomMargin: 40
                        color: "#666666"
                    }
                    Rectangle
                    {

                        width: 400
                        height: 300
                        radius: 30
                        anchors.bottom: imgPj1.bottom
                        anchors.horizontalCenter: imgPj1.horizontalCenter
                        anchors.bottomMargin: 20
                        color: "#999999"
                    }


                    Rectangle
                    {
                        id: imgPj1
                        width: 420
                        height: 300
                        radius: 30
                        anchors.bottom: pj1.bottom

                        Image {
                            id: img1
                            source: "qrc:/pj1"
                            anchors.fill: imgPj1
                            fillMode: Image.PreserveAspectFit
                        }
                    }
                }

                Rectangle
                {
                    id: pj2
                    height: 520
                    width: 420
                    color: "#333333"//"#628935"
                    radius: 30
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.leftMargin: 50
                    Layout.topMargin: 80
                    Rectangle
                    {
                        id: linepj2
                        height:1
                        width: parent.width
                        color: "#FFFFFF"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: pj2.top
                        anchors.topMargin: 120
                        opacity: 0.3
                    }
                    Text
                    {
                        text: "FIREWALL.02"
                        font.family: philo.name
                        font.pixelSize: 30
                        color: "#FFFFFF"
                        anchors.bottom: linepj2.top
                        anchors.bottomMargin: 40
                        anchors.left: pj2.left
                        anchors.leftMargin: 25
                    }

                    Rectangle
                    {
                        width: 380
                        height: 300
                        radius: 30
                        anchors.bottom: imgPj2.bottom
                        anchors.horizontalCenter: imgPj2.horizontalCenter
                        anchors.bottomMargin: 40
                        color: "#FFFFFF"
                        opacity: 0.5

                    }
                    Rectangle
                    {

                        width: 400
                        height: 300
                        radius: 30
                        anchors.bottom: imgPj2.bottom
                        anchors.horizontalCenter: imgPj2.horizontalCenter
                        anchors.bottomMargin: 20
                        color: "#FFFFFF"
                        opacity: 0.3
                    }


                    Rectangle
                    {
                        id: imgPj2
                        width: 420
                        height: 300
                        radius: 30
                        anchors.bottom: pj2.bottom

                        Image {
                            id: img2
                            source: "qrc:/pj1"
                            anchors.fill: imgPj2
                            fillMode: Image.PreserveAspectFit
                        }
                    }
                }

                Rectangle
                {
                    id: pj3
                    height: 520
                    width: 420
                    color: "#444444"
                    radius: 30
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.leftMargin: 50
                    Layout.topMargin: 80
                    Rectangle
                    {
                        id: linepj3
                        height:1
                        width: parent.width
                        color: "#FFFFFF"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: pj3.top
                        anchors.topMargin: 120
                        opacity: 0.3
                    }
                    Text
                    {
                        text: "FIREWALL.02"
                        font.family: philo.name
                        font.pixelSize: 30
                        color: "#FFFFFF"
                        anchors.bottom: linepj3.top
                        anchors.bottomMargin: 40
                        anchors.left: pj3.left
                        anchors.leftMargin: 25
                    }

                    Rectangle
                    {
                        width: 380
                        height: 300
                        radius: 30
                        anchors.bottom: imgPj3.bottom
                        anchors.horizontalCenter: imgPj3.horizontalCenter
                        anchors.bottomMargin: 40
                        color: "#666666"
                    }
                    Rectangle
                    {

                        width: 400
                        height: 300
                        radius: 30
                        anchors.bottom: imgPj3.bottom
                        anchors.horizontalCenter: imgPj3.horizontalCenter
                        anchors.bottomMargin: 20
                        color: "#999999"
                    }


                    Rectangle
                    {
                        id: imgPj3
                        width: 420
                        height: 300
                        radius: 30
                        anchors.bottom: pj3.bottom

                        Image {
                            id: img3
                            source: "qrc:/pj1"
                            anchors.fill: imgPj3
                            fillMode: Image.PreserveAspectFit
                        }
                    }
                }

            }
        }

        ColumnLayout
        {
            id:myWorkEx
            anchors.top: projectsRect.bottom
            width: parent.width

            Text {
                id: myWorkExtext
                text: qsTr("<html>My Work <font color='#628935'>Experience</font></html>")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                Layout.topMargin: 100
                font.family: philo.name
                font.pixelSize: 50
                color: "#313131"
            }
        }
    }
}
