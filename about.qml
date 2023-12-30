import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page {
    background: Rectangle
    {
        color: "#FFFFFF"
    }
    height: 2050
    Flickable
    {
        anchors.fill: parent
        contentWidth: parent.width // Adjust contentWidth based on your needs
        contentHeight: Math.max(5000, parent.height)


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
                    acceptedButtons: Qt.LeftButton
                    cursorShape: Qt.PointingHandCursor

                    //just to check if the home button is clicked
                    onClicked:
                    {
                        loader.push("qrc:/WEBSITE/home.qml")
                        console.log("About button clicked: Test case")
                    }

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
                    acceptedButtons: Qt.LeftButton
                    cursorShape: Qt.PointingHandCursor

                    //just to check if the home button is clicked
                    onClicked:
                    {
                        // loader.push("qrc:/WEBSITE/about.qml")
                        console.log("About button clicked: Test case")
                    }
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
                    acceptedButtons: Qt.LeftButton
                    cursorShape: Qt.PointingHandCursor

                    //just to check if the home button is clicked
                    onClicked:
                    {
                        loader.push("qrc:/WEBSITE/resume.qml")
                        console.log("Resume button clicked: Test case")
                    }
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
                text: "Project"
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
                    acceptedButtons: Qt.LeftButton
                    cursorShape: Qt.PointingHandCursor

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

        Text
        {
            id: label2Text
            text: qsTr("<html>I'm <font color='#628935'; text-align: center>Creative</font><br />Software Developer</html>")
            FontLoader
            {
                id: philo
                source: "qrc:/PhiloBold"
            }
            font.family: philo.name
            font.pixelSize: 70
            color: "#313131"

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: headerBar.bottom
            anchors.topMargin: 70
            horizontalAlignment: Text.AlignHCenter
        }

        Text
        {
            id: intro
            text: "<html>My journey commenced at the <i><font color='#628935'>age of 18</font></i> when I delved into the corporate world, immersing myself in the tech industry before completing high school. This early exposure honed my skills and instilled a work ethic that set me apart from the average crowd.<br /><br />My expertise lies in <i><font color='#628935'>C++ development, cross-platform applications, and the intricacies of firmwares (with a specialized focus on STM32 boards)</font></i>. Drawing from my corporate experience, which spans beyond software into the broader <i><font color='#628935'>3D-Computer Graphics</font></i>, I've navigated diverse challenges, contributing meaningfully to projects that transcend conventional boundaries.<br /><br />Beyond the code, I've delved into the complexities of Neural Networks and Computer Vision (OpenCV), engaging in continuous research to stay at the forefront of these evolving domains. Join me as I navigate the fascinating intersections of software, firmware intricacies, and the boundless possibilities of AI. It's not just a career; it's a journey shaped by early milestones and an unwavering commitment to excellence.</html>"
            color: "#777777"
            width: parent.width * 0.9
            font.family: "Poppins"
            font.styleName: "Regular"
            font.pixelSize: 20
            anchors.top: label2Text.bottom
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
        }

        Rectangle
        {
            id: bioData
            width: parent.width
            height: 650
            color: "#313131"
            radius: 50
            anchors.top: intro.bottom
            anchors.topMargin: 100

            RowLayout
            {
                spacing: 100
                id:quoteData
                ColumnLayout
                {
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.leftMargin: 50
                    Layout.topMargin: 70

                    spacing: 30
                    Text {
                        id: quote
                        text: qsTr("The\ndoer\nalone\nlearneth.")
                        font.family: philo.name
                        font.pixelSize: 100
                        color: "#FFFFFF"
                    }

                    Text {
                        id: author
                        text: qsTr("- <html><i>Friedrich Nietzsche</i></html>")
                        font.family: "poppins"
                        font.styleName: "Light"
                        font.pixelSize: 20
                        color: "#FFFFFF"
                    }
                }

                ColumnLayout
                {
                    id: bioInfo
                    spacing: 50
                    Text {
                        id: about
                        text: qsTr("<html><font color='#628935'>About</font> Me</html>")
                        font.family: philo.name
                        font.pixelSize: 50
                        color: "#FFFFFF"
                    }

                    GridLayout
                    {
                        id: aboutdata
                        columns: 3
                        columnSpacing: 100
                        rowSpacing: 50
                        ColumnLayout
                        {
                            id: name
                            Text {
                                text: qsTr("Name")
                                font.family: philo.name
                                font.pixelSize: 30
                                color: "#FFFFFF"
                            }
                            Text {
                                text: qsTr("Kaustuv Pokharel")
                                font.family: "poppins"
                                font.styleName: "Light"
                                font.pixelSize: 20
                                color: "#FFFFFF"
                            }
                        }

                        ColumnLayout
                        {
                            id: dob
                            Text {
                                text: qsTr("DOB")
                                font.family: philo.name
                                font.pixelSize: 30
                                color: "#FFFFFF"
                            }
                            Text {
                                text: qsTr("24th OCT 2001")
                                font.family: "poppins"
                                font.styleName: "Light"
                                font.pixelSize: 20
                                color: "#FFFFFF"
                            }
                        }

                        ColumnLayout
                        {
                            id: age
                            Text {
                                text: qsTr("Age")
                                font.family: philo.name
                                font.pixelSize: 30
                                color: "#FFFFFF"
                            }
                            Text {
                                text: qsTr("22")
                                font.family: "poppins"
                                font.styleName: "Light"
                                font.pixelSize: 20
                                color: "#FFFFFF"
                            }
                        }

                        ColumnLayout
                        {
                            id: address
                            Text {
                                text: qsTr("Address")
                                font.family: philo.name
                                font.pixelSize: 30
                                color: "#FFFFFF"
                            }
                            Text {
                                text: qsTr("Toronto, Canada")
                                font.family: "poppins"
                                font.styleName: "Light"
                                font.pixelSize: 20
                                color: "#FFFFFF"
                            }
                        }

                        ColumnLayout
                        {
                            id: origin
                            Text {
                                text: qsTr("Origin")
                                font.family: philo.name
                                font.pixelSize: 30
                                color: "#FFFFFF"
                            }
                            Text {
                                text: qsTr("Biratnagar, Nepal")
                                font.family: "poppins"
                                font.styleName: "Light"
                                font.pixelSize: 20
                                color: "#FFFFFF"
                            }
                        }

                        ColumnLayout
                        {
                            id: email
                            Text {
                                text: qsTr("Email")
                                font.family: philo.name
                                font.pixelSize: 30
                                color: "#FFFFFF"
                            }

                            Text {
                                text: qsTr("kastuvpokharel@gmail.com")
                                font.family: "poppins"
                                font.styleName: "Light"
                                font.pixelSize: 20
                                color: "#FFFFFF"
                            }
                        }

                        ColumnLayout
                        {
                            id: num
                            Text {
                                text: qsTr("Phone")
                                font.family: philo.name
                                font.pixelSize: 30
                                color: "#FFFFFF"
                            }
                            Text {
                                text: qsTr("+1 647-624-2171")
                                font.family: "poppins"
                                font.styleName: "Light"
                                font.pixelSize: 20
                                color: "#FFFFFF"
                            }
                        }

                        ColumnLayout
                        {
                            id: language
                            Text {
                                text: qsTr("Language")
                                font.family: philo.name
                                font.pixelSize: 30
                                color: "#FFFFFF"
                            }
                            Text {
                                text: qsTr("English, Nepali, Hindi, Bengali")
                                font.family: "poppins"
                                font.styleName: "Light"
                                font.pixelSize: 20
                                color: "#FFFFFF"
                            }
                        }

                        ColumnLayout
                        {
                            id: job
                            Text {
                                text: qsTr("Open for")
                                font.family: philo.name
                                font.pixelSize: 30
                                color: "#FFFFFF"
                            }
                            Text {
                                text: qsTr("Internship / Full-time")
                                font.family: "poppins"
                                font.styleName: "Light"
                                font.pixelSize: 20
                                color: "#FFFFFF"
                            }
                        }
                    }
                }
            }
        }

        ColumnLayout
        {
            id:myEdu
            anchors.top:bioData.bottom
            width: parent.width
            spacing: 50

            Text
            {
                id: myEdutext
                text: qsTr("<html>My <font color='#628935'>Education</font></html>")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                Layout.topMargin: 100
                font.family: philo.name
                font.pixelSize: 50
                color: "#313131"
            }

            RowLayout
            {
                id: edu1
                Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                Layout.leftMargin: 50

                Text
                {
                    id: edu1text
                    text: "Seneca Polytechnic - Toronto"
                    font.family: philo.name
                    font.pixelSize: 30

                    Text
                    {
                        text: qsTr("September 2022 - November 2024")
                        font.family: "Poppins"
                        font.styleName: "Medium"
                        font.pixelSize: 20
                        color: "#313131"
                        anchors.top: parent.bottom
                        opacity: 0.7
                    }
                }

                Image {
                    id: imgCIC
                    source: "qrc:/greenCic"
                    sourceSize: Qt.size(50,50)
                    Layout.alignment: Qt.AlignLeft
                    Layout.leftMargin: 198
                    Layout.topMargin: 25
                    fillMode: Image.PreserveAspectFit
                }

                Text
                {
                    id: edu1Dis
                    text: "Software Engineering"
                    font.family: philo.name
                    font.pixelSize: 30
                    Layout.alignment: Qt.AlignLeft
                    Layout.leftMargin: 50

                    Text
                    {
                        text: qsTr("Relevant coursework: Data Structures and Algorithms,\nOperating Systems, Software Design and Development,\nProgramming Languages,and Computer Networks,\nMaths(calculus I & II, Linear algebra, discrete, statistics).")
                        font.family: "Poppins"
                        font.styleName: "Medium"
                        font.pixelSize: 20
                        color: "#313131"
                        anchors.top: parent.bottom
                        opacity: 0.7
                    }
                }
            }

            RowLayout
            {
                id: edu2
                Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                Layout.topMargin: 50
                Layout.leftMargin: 50

                Text
                {
                    id: edu2text
                    text: "Trinity International College - Nepal"
                    font.family: philo.name
                    font.pixelSize: 30

                    Text
                    {
                        text: qsTr("May 2018 - Febuary 2020")
                        font.family: "Poppins"
                        font.styleName: "Medium"
                        font.pixelSize: 20
                        color: "#313131"
                        anchors.top: parent.bottom
                        opacity: 0.7
                    }
                }

                Image {
                    source: "qrc:/grayCic"
                    sourceSize: Qt.size(50,50)
                    Layout.alignment: Qt.AlignLeft
                    Layout.leftMargin: 110
                    Layout.topMargin: 25
                    fillMode: Image.PreserveAspectFit
                }

                Text
                {
                    id: edu2Dis
                    text: "Computer Science"
                    font.family: philo.name
                    font.pixelSize: 30
                    Layout.alignment: Qt.AlignLeft
                    Layout.leftMargin: 50

                    Text
                    {
                        text: qsTr("Relevant coursework: Maths, Science and Computer.")
                        font.family: "Poppins"
                        font.styleName: "Medium"
                        font.pixelSize: 20
                        color: "#313131"
                        anchors.top: parent.bottom
                        opacity: 0.7
                    }
                }
            }

        }

        Rectangle
        {
            id: skillRect
            width: parent.width
            height: 850
            color: "Transparent"
            radius: 50
            anchors.top:myEdu.bottom
            anchors.topMargin: 150

            Rectangle
            {
                id: bg
                width: parent.width
                height: 850
                color: "#628935"
                radius: 50
                opacity: 0.1
            }

            Text
            {
                id: skilltext
                text: qsTr("<html>My <font color='#628935'>Skills</font></html>")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 100
                font.family: philo.name
                font.pixelSize: 50
                color: "#313131"
            }
        }
    }
}
