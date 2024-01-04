import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page
{
    background: Rectangle
    {
        color: "#FFFFFF"
    }

    Flickable
    {
        anchors.fill: parent
        contentWidth: parent.width // Adjust contentWidth based on your needs
        contentHeight : Math.max(footer.y + footer.height - 100, height);

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
                height: 1000
                color: "#628935"
                radius: 50
                opacity: 0.05
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

            ColumnLayout
            {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: skilltext.bottom
                anchors.topMargin: 50
                spacing: 100

                GridLayout
                {
                    id: skillbarBox
                    Layout.alignment: Qt.AlignHCenter

                    columns: 2
                    columnSpacing: 200
                    rowSpacing: 30

                    ColumnLayout
                    {
                        id: qtQml
                        spacing: 10

                        RowLayout
                        {
                            spacing: 480
                            Text {
                                id: tool1
                                text: qsTr("QT / QML")
                                font.family: philo.name
                                font.pixelSize: 20
                                color: "#313131"
                            }

                            Text {
                                id: per1
                                text: qsTr("75%")
                                font.family: "Poppins"
                                font.styleName: "Bold"
                                font.pixelSize: 15
                                color: "#628935"
                            }
                        }
                        Rectangle
                        {
                            id: skillBar1
                            width: 0.75 * skillBarS1.width
                            height: 5
                            radius: 25
                            color: "#628935"

                            Rectangle
                            {
                                id: skillBarS1
                                width: 600
                                height: 5
                                radius: 25
                                color: "#313131"
                                opacity: 0.2
                            }
                        }
                    }

                    ColumnLayout
                    {
                        id: figma
                        spacing: 10

                        RowLayout
                        {
                            spacing: 513
                            Text {
                                id: tool2
                                text: qsTr("Figma")
                                font.family: philo.name
                                font.pixelSize: 20
                                color: "#313131"
                            }

                            Text {
                                id: per2
                                text: qsTr("85%")
                                font.family: "Poppins"
                                font.styleName: "Bold"
                                font.pixelSize: 15
                                color: "#628935"
                            }
                        }
                        Rectangle
                        {
                            id: skillBar2
                            width: 0.85 * skillBarS2.width
                            height: 5
                            radius: 25
                            color: "#628935"

                            Rectangle
                            {
                                id: skillBarS2
                                width: 600
                                height: 5
                                radius: 25
                                color: "#313131"
                                opacity: 0.2
                            }
                        }
                    }

                    ColumnLayout
                    {
                        id: cCpp
                        spacing: 10

                        RowLayout
                        {
                            spacing: 495
                            Text {
                                id: tool3
                                text: qsTr("C / C++")
                                font.family: philo.name
                                font.pixelSize: 20
                                color: "#313131"
                            }

                            Text {
                                id: per3
                                text: qsTr("80%")
                                font.family: "Poppins"
                                font.styleName: "Bold"
                                font.pixelSize: 15
                                color: "#628935"
                            }
                        }
                        Rectangle
                        {
                            id: skillBar3
                            width: 0.80 * skillBarS3.width
                            height: 5
                            radius: 25
                            color: "#628935"

                            Rectangle
                            {
                                id: skillBarS3
                                width: 600
                                height: 5
                                radius: 25
                                color: "#313131"
                                opacity: 0.2
                            }
                        }
                    }

                    ColumnLayout
                    {
                        id: blender
                        spacing: 10

                        RowLayout
                        {
                            spacing: 467
                            Text {
                                id: tool4
                                text: qsTr("Blender 3D")
                                font.family: philo.name
                                font.pixelSize: 20
                                color: "#313131"
                            }

                            Text {
                                id: per4
                                text: qsTr("90%")
                                font.family: "Poppins"
                                font.styleName: "Bold"
                                font.pixelSize: 15
                                color: "#628935"
                            }
                        }
                        Rectangle
                        {
                            id: skillBar4
                            width: 0.90 * skillBarS4.width
                            height: 5
                            radius: 25
                            color: "#628935"

                            Rectangle
                            {
                                id: skillBarS4
                                width: 600
                                height: 5
                                radius: 25
                                color: "#313131"
                                opacity: 0.2
                            }
                        }
                    }

                    ColumnLayout
                    {
                        id: python
                        spacing: 10

                        RowLayout
                        {
                            spacing: 503
                            Text {
                                id: tool5
                                text: qsTr("Python")
                                font.family: philo.name
                                font.pixelSize: 20
                                color: "#313131"
                            }

                            Text {
                                id: per5
                                text: qsTr("70%")
                                font.family: "Poppins"
                                font.styleName: "Bold"
                                font.pixelSize: 15
                                color: "#628935"
                            }
                        }
                        Rectangle
                        {
                            id: skillBar5
                            width: 0.70 * skillBarS5.width
                            height: 5
                            radius: 25
                            color: "#628935"

                            Rectangle
                            {
                                id: skillBarS5
                                width: 600
                                height: 5
                                radius: 25
                                color: "#313131"
                                opacity: 0.2
                            }
                        }
                    }

                    ColumnLayout
                    {
                        id: qe
                        spacing: 10

                        RowLayout
                        {
                            spacing: 390
                            Text {
                                id: tool6
                                text: qsTr("Adobe After Effects")
                                font.family: philo.name
                                font.pixelSize: 20
                                color: "#313131"
                            }

                            Text {
                                id: per6
                                text: qsTr("90%")
                                font.family: "Poppins"
                                font.styleName: "Bold"
                                font.pixelSize: 15
                                color: "#628935"
                            }
                        }
                        Rectangle
                        {
                            id: skillBar6
                            width: 0.90 * skillBarS6.width
                            height: 5
                            radius: 25
                            color: "#628935"

                            Rectangle
                            {
                                id: skillBarS6
                                width: 600
                                height: 5
                                radius: 25
                                color: "#313131"
                                opacity: 0.2
                            }
                        }
                    }

                    ColumnLayout
                    {
                        id: js
                        spacing: 10

                        RowLayout
                        {
                            spacing: 360
                            Text {
                                id: tool7
                                text: qsTr("JavaScript / Html / CSS")
                                font.family: philo.name
                                font.pixelSize: 20
                                color: "#313131"
                            }

                            Text {
                                id: per7
                                text: qsTr("60%")
                                font.family: "Poppins"
                                font.styleName: "Bold"
                                font.pixelSize: 15
                                color: "#628935"
                            }
                        }
                        Rectangle
                        {
                            id: skillBar7
                            width: 0.60 * skillBarS7.width
                            height: 5
                            radius: 25
                            color: "#628935"

                            Rectangle
                            {
                                id: skillBarS7
                                width: 600
                                height: 5
                                radius: 25
                                color: "#313131"
                                opacity: 0.2
                            }
                        }
                    }

                    ColumnLayout
                    {
                        id: illus
                        spacing: 10

                        RowLayout
                        {
                            spacing: 414
                            Text {
                                id: tool8
                                text: qsTr("Adobe Illustrator")
                                font.family: philo.name
                                font.pixelSize: 20
                                color: "#313131"
                            }

                            Text {
                                id: per8
                                text: qsTr("90%")
                                font.family: "Poppins"
                                font.styleName: "Bold"
                                font.pixelSize: 15
                                color: "#628935"
                            }
                        }
                        Rectangle
                        {
                            id: skillBar8
                            width: 0.90 * skillBarS8.width
                            height: 5
                            radius: 25
                            color: "#628935"

                            Rectangle
                            {
                                id: skillBarS8
                                width: 600
                                height: 5
                                radius: 25
                                color: "#313131"
                                opacity: 0.2
                            }
                        }
                    }

                    ColumnLayout
                    {
                        id: sql
                        spacing: 10

                        RowLayout
                        {
                            spacing: 408
                            Text {
                                id: tool9
                                text: qsTr("SQL (PostgreSQL)")
                                font.family: philo.name
                                font.pixelSize: 20
                                color: "#313131"
                            }

                            Text {
                                id: per9
                                text: qsTr("75%")
                                font.family: "Poppins"
                                font.styleName: "Bold"
                                font.pixelSize: 15
                                color: "#628935"
                            }
                        }
                        Rectangle
                        {
                            id: skillBar9
                            width: 0.75 * skillBarS9.width
                            height: 5
                            radius: 25
                            color: "#628935"

                            Rectangle
                            {
                                id: skillBarS9
                                width: 600
                                height: 5
                                radius: 25
                                color: "#313131"
                                opacity: 0.2
                            }
                        }
                    }

                    ColumnLayout
                    {
                        id: photoshop
                        spacing: 10

                        RowLayout
                        {
                            spacing: 410
                            Text {
                                id: tool10
                                text: qsTr("Adobe Photoshop")
                                font.family: philo.name
                                font.pixelSize: 20
                                color: "#313131"
                            }

                            Text {
                                id: per10
                                text: qsTr("90%")
                                font.family: "Poppins"
                                font.styleName: "Bold"
                                font.pixelSize: 15
                                color: "#628935"
                            }
                        }
                        Rectangle
                        {
                            id: skillBar10
                            width: 0.90 * skillBarS10.width
                            height: 5
                            radius: 25
                            color: "#628935"

                            Rectangle
                            {
                                id: skillBarS10
                                width: 600
                                height: 5
                                radius: 25
                                color: "#313131"
                                opacity: 0.2
                            }
                        }
                    }

                    ColumnLayout
                    {
                        id: stm32
                        spacing: 10

                        RowLayout
                        {
                            spacing: 403
                            Text {
                                id: tool11
                                text: qsTr("Embedded/STM32")
                                font.family: philo.name
                                font.pixelSize: 20
                                color: "#313131"
                            }

                            Text {
                                id: per11
                                text: qsTr("40%")
                                font.family: "Poppins"
                                font.styleName: "Bold"
                                font.pixelSize: 15
                                color: "#628935"
                            }
                        }
                        Rectangle
                        {
                            id: skillBar11
                            width: 0.40 * skillBarS11.width
                            height: 5
                            radius: 25
                            color: "#628935"

                            Rectangle
                            {
                                id: skillBarS11
                                width: 600
                                height: 5
                                radius: 25
                                color: "#313131"
                                opacity: 0.2
                            }
                        }
                    }

                    ColumnLayout
                    {
                        id: bash
                        spacing: 10

                        RowLayout
                        {
                            spacing: 470
                            Text {
                                id: tool12
                                text: qsTr("Bash / Zsh")
                                font.family: philo.name
                                font.pixelSize: 20
                                color: "#313131"
                            }

                            Text {
                                id: per12
                                text: qsTr("70%")
                                font.family: "Poppins"
                                font.styleName: "Bold"
                                font.pixelSize: 15
                                color: "#628935"
                            }
                        }
                        Rectangle
                        {
                            id: skillBar12
                            width: 0.70 * skillBarS12.width
                            height: 5
                            radius: 25
                            color: "#628935"

                            Rectangle
                            {
                                id: skillBarS12
                                width: 600
                                height: 5
                                radius: 25
                                color: "#313131"
                                opacity: 0.2
                            }
                        }
                    }

                    ColumnLayout
                    {
                        id: git
                        spacing: 10

                        RowLayout
                        {
                            spacing: 540
                            Text {
                                id: tool13
                                text: qsTr("Git")
                                font.family: philo.name
                                font.pixelSize: 20
                                color: "#313131"
                            }

                            Text {
                                id: per13
                                text: qsTr("70%")
                                font.family: "Poppins"
                                font.styleName: "Bold"
                                font.pixelSize: 15
                                color: "#628935"

                            }
                        }
                        Rectangle
                        {
                            id: skillBar13
                            width: 0.70 * skillBarS13.width
                            height: 5
                            radius: 25
                            color: "#628935"

                            Rectangle
                            {
                                id: skillBarS13
                                width: 600
                                height: 5
                                radius: 25
                                color: "#313131"
                                opacity: 0.2
                            }
                        }
                    }

                    ColumnLayout
                    {
                        id: jira
                        spacing: 10

                        RowLayout
                        {
                            spacing: 535
                            Text {
                                id: tool14
                                text: qsTr("Jira")
                                font.family: philo.name
                                font.pixelSize: 20
                                color: "#313131"
                            }

                            Text {
                                id: per14
                                text: qsTr("70%")
                                font.family: "Poppins"
                                font.styleName: "Bold"
                                font.pixelSize: 15
                                color: "#628935"
                            }
                        }
                        Rectangle
                        {
                            id: skillBar14
                            width: 0.70 * skillBarS12.width
                            height: 5
                            radius: 25
                            color: "#628935"

                            Rectangle
                            {
                                id: skillBarS14
                                width: 600
                                height: 5
                                radius: 25
                                color: "#313131"
                                opacity: 0.2
                            }
                        }
                    }
                }

                GridLayout
                {
                    id: services
                    columns: 3
                    columnSpacing: 330
                    rowSpacing: 30
                    Layout.alignment: Qt.AlignHCenter

                    RowLayout
                    {
                        id: service1
                        spacing: 20

                        Image {
                            source: "qrc:/grayCic"
                            sourceSize: Qt.size(30,30)
                            fillMode: Image.PreserveAspectFit
                        }
                        Text {
                            id: serviceName1
                            text: qsTr("Crossplatform Software")
                            font.family: philo.name
                            font.pixelSize: 20
                            color: "#313131"
                        }
                    }

                    RowLayout
                    {
                        id: service2
                        spacing: 20

                        Image {
                            source: "qrc:/greenCic"
                            sourceSize: Qt.size(30,30)
                            fillMode: Image.PreserveAspectFit
                        }
                        Text {
                            id: serviceName2
                            text: qsTr("Web Development")
                            font.family: philo.name
                            font.pixelSize: 20
                            color: "#313131"
                        }
                    }

                    RowLayout
                    {
                        id: service3
                        spacing: 20

                        Image {
                            source: "qrc:/grayCic"
                            sourceSize: Qt.size(30,30)
                            fillMode: Image.PreserveAspectFit
                        }
                        Text {
                            id: serviceName3
                            text: qsTr("Embedded Programming")
                            font.family: philo.name
                            font.pixelSize: 20
                            color: "#313131"
                        }
                    }

                    RowLayout
                    {
                        id: service4
                        spacing: 20

                        Image {
                            source: "qrc:/greenCic"
                            sourceSize: Qt.size(30,30)
                            fillMode: Image.PreserveAspectFit
                        }
                        Text {
                            id: serviceName4
                            text: qsTr("Machine Learning (ML)")
                            font.family: philo.name
                            font.pixelSize: 20
                            color: "#313131"
                        }
                    }

                    RowLayout
                    {
                        id: service5
                        spacing: 20

                        Image {
                            source: "qrc:/grayCic"
                            sourceSize: Qt.size(30,30)
                            fillMode: Image.PreserveAspectFit
                        }
                        Text {
                            id: serviceName5
                            text: qsTr("Cloud Computing")
                            font.family: philo.name
                            font.pixelSize: 20
                            color: "#313131"
                        }
                    }

                    RowLayout
                    {
                        id: service6
                        spacing: 20

                        Image {
                            source: "qrc:/greenCic"
                            sourceSize: Qt.size(30,30)
                            fillMode: Image.PreserveAspectFit
                        }
                        Text {
                            id: serviceName6
                            text: qsTr("Networking")
                            font.family: philo.name
                            font.pixelSize: 20
                            color: "#313131"
                        }
                    }

                    RowLayout
                    {
                        id: service7
                        spacing: 20

                        Image {
                            source: "qrc:/grayCic"
                            sourceSize: Qt.size(30,30)
                            fillMode: Image.PreserveAspectFit
                        }
                        Text {
                            id: serviceName7
                            text: qsTr("3D-Motion Graphics")
                            font.family: philo.name
                            font.pixelSize: 20
                            color: "#313131"
                        }
                    }

                    RowLayout
                    {
                        id: service8
                        spacing: 20

                        Image {
                            source: "qrc:/greenCic"
                            sourceSize: Qt.size(30,30)
                            fillMode: Image.PreserveAspectFit
                        }
                        Text {
                            id: serviceName8
                            text: qsTr("UI/UX Design")
                            font.family: philo.name
                            font.pixelSize: 20
                            color: "#313131"
                        }
                    }

                    RowLayout
                    {
                        id: service9
                        spacing: 20

                        Image {
                            source: "qrc:/grayCic"
                            sourceSize: Qt.size(30,30)
                            fillMode: Image.PreserveAspectFit
                        }
                        Text {
                            id: serviceName9
                            text: qsTr("Graphics Visualizer")
                            font.family: philo.name
                            font.pixelSize: 20
                            color: "#313131"
                        }
                    }
                }
            }
        }

        Rectangle
        {
            id: designBar2
            width: parent.width
            height: 130
            color: "#628935"
            radius: 70
            anchors.top: skillRect.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 300

            Rectangle
            {
                width: parent.width
                height: 90
                color: "#FFFFFF"
                anchors.centerIn: parent
                rotation: -2
                Text {
                    text: qsTr("C          C++         Python          JavaScript        SQL         QT/QML          Blender3D         Adobe Creative")
                    font.family: philo.name
                    font.pixelSize: 34
                    color: "#313131"
                    anchors.centerIn: parent
                }
            }
        }

        Rectangle
        {
            id: footer
            width: parent.width
            height: 800
            color: "#313131"
            radius: 50
            anchors.top: designBar2.bottom
            anchors.topMargin: 150
            anchors.horizontalCenter: parent.horizontalCenter

            ColumnLayout
            {
                RowLayout
                {
                    spacing: 900
                    Text
                    {
                        id: letsConnect
                        text: qsTr("Get In Touch")
                        font.family: philo.name
                        font.pixelSize: 50
                        color: "#FFFFFF"
                        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        Layout.leftMargin: 50
                        Layout.topMargin: 70
                    }

                    Rectangle
                    {
                        id: mailMe2
                        Layout.preferredHeight: 60
                        Layout.preferredWidth: 190
                        color:"#313131"
                        border.color: "#FFFFFF"
                        border.width: 2
                        radius: 60
                        Layout.alignment: Qt.AlignRight | Qt.AlignTop
                        Layout.rightMargin: 50
                        Layout.topMargin: 70

                        Text
                        {
                            id: mailtext2
                            text: qsTr("Mail me")
                            font.family: "Poppins"
                            font.styleName: "Medium"
                            font.pixelSize: 25
                            color: "#FFFFFF"
                            anchors.centerIn: parent
                        }
                        MouseArea
                        {
                            anchors.fill: parent
                            hoverEnabled: true
                            onClicked:
                            {
                                // Specify the email address and subject
                                var emailAddress = "kastuvpokharel@email.com";
                                var subject = "Hello; Reaching out from your Website";
                                var mailtoUrl = "mailto:" + emailAddress + "?subject=" + encodeURIComponent(subject);
                                            // Open the default email client
                                Qt.openUrlExternally(mailtoUrl);
                            }
                            onEntered:
                            {
                                mailMe2.color = "#628935";
                                mailMe2.border.color = "#628935";
                                mailtext2.color = "#FFFFFF";
                            }
                            onExited:
                            {
                                mailMe2.color = "Transparent";
                                mailMe2.border.color = "#FFFFFF";
                                mailtext2.color = "#FFFFFF";
                            }

                        }
                    }

                }
                Rectangle
                {
                    id: line2
                    height:1
                    width: 1400
                    color: "#FFFFFF"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    Layout.topMargin: 60
                    opacity: 0.3
                }
                RowLayout
                {
                    spacing: 240
                    ColumnLayout
                    {
                        Text
                        {
                            id: nameLogo2
                            text: "<span>Kaustuv <font color='#628935'>Pokharel</font></span>"
                            color: "#FFFFFF"
                            font.family : nautigal.name
                            font.pixelSize: 50
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.leftMargin: 50
                            Layout.topMargin: 40
                        }

                        Text
                        {
                            id: intro2
                            text: "<html><p>A highly motivated and ambitious sophomore<br />Software Engineering student with a passion<br />for system programming, embedded systems,<br />and software development. Proficient in<br />programming languages such as C/C++/Python.<br />Currently expanding knowledge in QT<br />to deepen expertise.</p></html>"
                            color: "#FFFFFF"
                            font.family: "Poppins"
                            font.styleName: "Light"
                            font.pixelSize: 17
                            opacity: 0.7
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.leftMargin: 50
                            Layout.topMargin: 10
                        }

                        RowLayout
                        {
                            id: socialMedia

                            Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                            Layout.leftMargin: 50
                            spacing: 10

                            Rectangle
                            {
                                id: githubIcon
                                width: 35
                                height: 35
                                color: "#444444"
                                radius: 50

                                Image {
                                    id: gitImg
                                    source: "qrc:/githubIcon.svg"
                                    sourceSize: Qt.size(15,15)
                                    fillMode: Image.PreserveAspectFit
                                    anchors.centerIn: parent
                                }

                                MouseArea
                                {
                                    anchors.fill: parent
                                    propagateComposedEvents: true
                                    hoverEnabled: true
                                    acceptedButtons: Qt.LeftButton
                                    cursorShape: Qt.PointingHandCursor

                                    onClicked:
                                    {
                                        Qt.openUrlExternally("https://github.com/kastuv")
                                    }

                                    onEntered:
                                    {
                                        githubIcon.color = "#628935";
                                    }
                                    onExited:
                                    {
                                        githubIcon.color = "#444444";
                                    }
                                }
                            }

                            Rectangle
                            {
                                id: linkedinIcon
                                width: 35
                                height: 35
                                color: "#444444"
                                radius: 50

                                Image {
                                    id: linkedinImg
                                    source: "qrc:/linkedinIcon.svg"
                                    sourceSize: Qt.size(15,15)
                                    fillMode: Image.PreserveAspectFit
                                    anchors.centerIn: parent
                                }

                                MouseArea
                                {
                                    anchors.fill: parent
                                    propagateComposedEvents: true
                                    hoverEnabled: true
                                    acceptedButtons: Qt.LeftButton
                                    cursorShape: Qt.PointingHandCursor

                                    onClicked:
                                    {
                                        Qt.openUrlExternally("https://www.linkedin.com/in/kaustuvpokharel/")
                                    }

                                    onEntered:
                                    {
                                        linkedinIcon.color = "#628935";
                                    }
                                    onExited:
                                    {
                                        linkedinIcon.color = "#444444";
                                    }
                                }
                            }

                            Rectangle
                            {
                                id: behanceIcon
                                width: 35
                                height: 35
                                color: "#444444"
                                radius: 50

                                Image {
                                    id: behanceImg
                                    source: "qrc:/behanceIcon.svg"
                                    sourceSize: Qt.size(15,15)
                                    fillMode: Image.PreserveAspectFit
                                    anchors.centerIn: parent
                                }

                                MouseArea
                                {
                                    anchors.fill: parent
                                    propagateComposedEvents: true
                                    hoverEnabled: true
                                    acceptedButtons: Qt.LeftButton
                                    cursorShape: Qt.PointingHandCursor

                                    onClicked:
                                    {
                                        Qt.openUrlExternally("https://www.behance.net/kaustuvpokharel3")
                                    }

                                    onEntered:
                                    {
                                        behanceIcon.color = "#628935";
                                    }
                                    onExited:
                                    {
                                        behanceIcon.color = "#444444";
                                    }
                                }
                            }

                            Rectangle
                            {
                                id: ytIcon
                                width: 35
                                height: 35
                                color: "#444444"
                                radius: 50

                                Image {
                                    id: ytImg
                                    source: "qrc:/ytIcon.svg"
                                    sourceSize: Qt.size(15,15)
                                    fillMode: Image.PreserveAspectFit
                                    anchors.centerIn: parent
                                }

                                MouseArea
                                {
                                    anchors.fill: parent
                                    propagateComposedEvents: true
                                    hoverEnabled: true
                                    acceptedButtons: Qt.LeftButton
                                    cursorShape: Qt.PointingHandCursor

                                    onClicked:
                                    {
                                        Qt.openUrlExternally("https://youtube.com/@K-A-L-I-?si=NlIWTPY7aL1Kp45r")
                                    }

                                    onEntered:
                                    {
                                        ytIcon.color = "#628935";
                                    }
                                    onExited:
                                    {
                                        ytIcon.color = "#444444";
                                    }
                                }
                            }

                            Rectangle
                            {
                                id: instaIcon
                                width: 35
                                height: 35
                                color: "#444444"
                                radius: 50

                                Image {
                                    id: instaImg
                                    source: "qrc:/instaIcon.svg"
                                    sourceSize: Qt.size(15,15)
                                    fillMode: Image.PreserveAspectFit
                                    anchors.centerIn: parent
                                }

                                MouseArea
                                {
                                    anchors.fill: parent
                                    propagateComposedEvents: true
                                    hoverEnabled: true
                                    acceptedButtons: Qt.LeftButton
                                    cursorShape: Qt.PointingHandCursor

                                    onClicked:
                                    {
                                        Qt.openUrlExternally("https://www.instagram.com/hail.to.kali")
                                    }

                                    onEntered:
                                    {
                                        instaIcon.color = "#628935";
                                    }
                                    onExited:
                                    {
                                        instaIcon.color = "#444444";
                                    }
                                }
                            }
                        }

                    }


                    ColumnLayout
                    {
                        spacing: 10
                        Text {
                            id: navigation
                            text: qsTr("Navigation")
                            font.family: philo.name
                            font.pixelSize: 25
                            color: "#628935"

                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.topMargin: -40
                            Layout.leftMargin: 50
                        }

                        Text {
                            id: navHome
                            text: qsTr("Home")
                            font.family: "Poppins"
                            font.styleName: "Light"
                            font.pixelSize: 15
                            color: "#FFFFFF"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.leftMargin: 50
                            Layout.topMargin: 10
                            opacity: 0.7
                        }

                        Text {
                            id: navAbout
                            text: qsTr("About")
                            font.family: "Poppins"
                            font.styleName: "Light"
                            font.pixelSize: 15
                            color: "#FFFFFF"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.leftMargin: 50
                            Layout.topMargin: 10
                            opacity: 0.7
                        }

                        Text {
                            id: navResume
                            text: qsTr("Resume")
                            font.family: "Poppins"
                            font.styleName: "Light"
                            font.pixelSize: 15
                            color: "#FFFFFF"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.leftMargin: 50
                            Layout.topMargin: 10
                            opacity: 0.7
                        }

                        Text {
                            id: navProject
                            text: qsTr("Project")
                            font.family: "Poppins"
                            font.styleName: "Light"
                            font.pixelSize: 15
                            color: "#FFFFFF"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.leftMargin: 50
                            Layout.topMargin: 10
                            opacity: 0.7
                        }
                    }

                    ColumnLayout
                    {
                        spacing: 10
                        Text {
                            id: contact
                            text: qsTr("Contact")
                            font.family: philo.name
                            font.pixelSize: 25
                            color: "#628935"

                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.topMargin: -57
                            Layout.leftMargin: 50
                        }

                        Text {
                            id: conNum
                            text: qsTr("+1 647-624-2171")
                            font.family: "Poppins"
                            font.styleName: "Light"
                            font.pixelSize: 15
                            color: "#FFFFFF"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.leftMargin: 50
                            Layout.topMargin: 10
                            opacity: 0.7
                        }

                        Text {
                            id: conMail
                            text: qsTr("kastuvpokharel@gmail.com")
                            font.family: "Poppins"
                            font.styleName: "Light"
                            font.pixelSize: 15
                            color: "#FFFFFF"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.leftMargin: 50
                            Layout.topMargin: 10
                            opacity: 0.7
                        }

                        Text {
                            id: conWeb
                            text: qsTr("www.kaustuvpokharel.com")
                            font.family: "Poppins"
                            font.styleName: "Light"
                            font.pixelSize: 15
                            color: "#FFFFFF"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.leftMargin: 50
                            Layout.topMargin: 10
                            opacity: 0.7
                        }
                    }
                }

                Rectangle
                {
                    id: line3
                    height:1
                    width: 1400
                    color: "#FFFFFF"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    Layout.topMargin: 30
                    opacity: 0.3
                }

                Text {
                    id: copyright
                    text: qsTr("<html>Copyright © 2023 <font color='#628935'>Kaustuv</font>. All Rights Reserved.</html>")
                    font.family: "Poppins"
                    font.styleName: "Medium"
                    font.pixelSize: 15
                    color: "#FFFFFF"
                    Layout.alignment: Qt.AlignHCenter
                    Layout.topMargin: 40
                }
            }
        }

        onHeightChanged:
        {
            var maxContentY = Math.max(0, contentHeight - height);
            contentY = Math.min(contentY, maxContentY);

            contentHeight = Math.max(footer.y + footer.height - 100, height);
        }
    }
}
