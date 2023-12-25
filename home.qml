import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page
{
    background: Rectangle {
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
                    acceptedButtons: Qt.LeftButton
                    cursorShape: Qt.PointingHandCursor

                    //just to check if the home button is clicked
                    onClicked:
                    {
                        loader.push("qrc:/WEBSITE/about.qml")
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

            Text
            {
                id: label1Text
                text: qsTr("<html>Hello, this website is built on <b>C++</b></html>")
                font.family: "poppins"
                font.styleName: "Medium"
                font.pixelSize: 15
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
                    console.log("Clicked Cpp, opening github");
                    Qt.openUrlExternally("https://github.com/kastuv/PortfolioWebiste-QT-Cpp")
                }

                onEntered:
                {
                    label1.color = "#628935";
                    label1.border.color = "#628935";
                    label1Text.color = "#FFFFFF";
                }
                onExited:
                {
                    label1.color = "Transparent"
                    label1.border.color = "#313131";
                    label1Text.color = "#628935";

                }
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
            color: "Transparent"
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
                    border.color: "#FFFFFF"
                    border.width: 2
                    color: "transparent"

                    radius: 60

                    Text
                    {   id: resText
                        text: qsTr("Resume")
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

                        onEntered:
                        {
                            resume.color = "#628935";
                            resume.border.color = "#628935";
                            resText.color = "#FFFFFF";
                        }
                        onExited:
                        {
                            resume.color = "Transparent";
                            resume.border.color = "#FFFFFF";
                            resText.color = "#FFFFFF";
                        }

                    }
                }
                Rectangle
                {
                    id: mailMe
                    Layout.preferredHeight: 60
                    Layout.preferredWidth: 190
                    border.color: "#FFFFFF"
                    border.width: 2
                    radius: 60
                    color: "Transparent"

                    Text
                    {
                        id: mailtext
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
                            mailMe.color = "#628935";
                            mailMe.border.color = "#628935";
                            mailtext.color = "#FFFFFF";
                        }
                        onExited:
                        {
                            mailMe.color = "Transparent";
                            mailMe.border.color = "#FFFFFF";
                            mailtext.color = "#FFFFFF";
                        }

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
                        color: "#FFFFFF"
                        opacity: 0.5
                    }
                    Rectangle
                    {

                        width: 400
                        height: 300
                        radius: 30
                        anchors.bottom: imgPj1.bottom
                        anchors.horizontalCenter: imgPj1.horizontalCenter
                        anchors.bottomMargin: 20
                        color: "#FFFFFF"
                        opacity: 0.3
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

                    MouseArea
                    {
                        anchors.fill: parent
                        hoverEnabled: true
                        acceptedButtons: Qt.LeftButton
                        cursorShape: Qt.PointingHandCursor

                        onClicked:
                        {
                            Qt.openUrlExternally("https://github.com/kastuv/FireWall_Version2")
                            console.log("Clicked on Firewall.02")
                        }

                        onEntered:
                        {
                            pj1.color = "#628935";
                            imgPj1.scale = 1.05;
                        }
                        onExited:
                        {
                            pj1.color = "#444444";
                            imgPj1.scale = 1;
                        }

                    }
                }

                Rectangle
                {
                    id: pj2
                    height: 520
                    width: 420
                    color: "#444444"//"#628935"
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
                        text: "Neural Network in C"
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

                    MouseArea
                    {
                        anchors.fill: parent
                        hoverEnabled: true
                        acceptedButtons: Qt.LeftButton
                        cursorShape: Qt.PointingHandCursor

                        onClicked:
                        {
                            Qt.openUrlExternally("https://github.com/kastuv/neuralNetwork-in-C")
                            console.log("Clicked on Firewall.02")
                        }

                        onEntered:
                        {
                            pj2.color = "#628935";
                            imgPj2.scale = 1.05;
                        }
                        onExited:
                        {
                            pj2.color = "#444444";
                            imgPj2.scale = 1;
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
                        text: "OpenCv-\nImageVideoProcessing\nAndroid-app"
                        font.family: philo.name
                        font.pixelSize: 30
                        color: "#FFFFFF"
                        anchors.bottom: linepj3.top
                        anchors.bottomMargin: 10
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
                        color: "#FFFFFF"
                        opacity: 0.5
                    }
                    Rectangle
                    {

                        width: 400
                        height: 300
                        radius: 30
                        anchors.bottom: imgPj3.bottom
                        anchors.horizontalCenter: imgPj3.horizontalCenter
                        anchors.bottomMargin: 20
                        color: "#FFFFFF"
                        opacity: 0.3
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

                    MouseArea
                    {
                        anchors.fill: parent
                        hoverEnabled: true
                        acceptedButtons: Qt.LeftButton
                        cursorShape: Qt.PointingHandCursor

                        onClicked:
                        {
                            Qt.openUrlExternally("https://github.com/kastuv/OpenCv-QT-Image-videoProcessing")
                            console.log("Clicked on Firewall.02")
                        }

                        onEntered:
                        {
                            pj3.color = "#628935";
                            imgPj3.scale = 1.05;
                        }
                        onExited:
                        {
                            pj3.color = "#444444";
                            imgPj3.scale = 1;
                        }
                    }
                }

            }
        }
        // Rectangle
        // {
        //     id: line2
        //     height:550
        //     width: 1
        //     color: "#313131"
        //     anchors.top: myWorkEx.top
        //     anchors.topMargin: 250
        //     anchors.right: myWorkEx.right
        //     anchors.rightMargin: 852
        // }

        ColumnLayout
        {
            id:myWorkEx
            anchors.top: projectsRect.bottom
            width: parent.width
            spacing: 50

            Text
            {
                id: myWorkExtext
                text: qsTr("<html>My Work <font color='#628935'>Experience</font></html>")
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                Layout.topMargin: 100
                font.family: philo.name
                font.pixelSize: 50
                color: "#313131"
            }

            RowLayout
            {
                id: exp1
                Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                Layout.leftMargin: 50

                Text
                {
                    id: exp1text
                    text: "Bell Canada - Ottawa"
                    font.family: philo.name
                    font.pixelSize: 30

                    Text
                    {
                        text: qsTr("May 2024 - July 2024")
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
                    Layout.leftMargin: 300
                    Layout.topMargin: 25
                    fillMode: Image.PreserveAspectFit
                }

                Text
                {
                    id: exp1Dis
                    text: "Software Developer Intern"
                    font.family: philo.name
                    font.pixelSize: 30
                    Layout.alignment: Qt.AlignLeft
                    Layout.leftMargin: 50

                    Text
                    {
                        text: qsTr("Incoming Software Developer Intern for the coming summer 2024")
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
                id: exp2
                Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                Layout.topMargin: 50
                Layout.leftMargin: 50

                Text
                {
                    id: exp2text
                    text: "Seneca Science & Technology Guild"
                    font.family: philo.name
                    font.pixelSize: 30

                    Text
                    {
                        text: qsTr("Jan 2023 - Present")
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
                    id: exp2Dis
                    text: "President"
                    font.family: philo.name
                    font.pixelSize: 30
                    Layout.alignment: Qt.AlignLeft
                    Layout.leftMargin: 50

                    Text
                    {
                        text: qsTr("An innovative student club of 130+ members, representing the college\n at tech competitions, fostering collaboration, and building industry\n relationships.")
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
                id: exp3
                Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                Layout.topMargin: 50
                Layout.leftMargin: 50

                Text
                {
                    id: exp3text
                    text: "SunBi Holdings Pvt. Ltd. - Nepal"
                    font.family: philo.name
                    font.pixelSize: 30

                    Text
                    {
                        text: qsTr("Jan 2021 - Aug 2022")
                        font.family: "Poppins"
                        font.styleName: "Medium"
                        font.pixelSize: 20
                        color: "#313131"
                        anchors.top: parent.bottom
                        opacity: 0.7
                    }
                }

                Image {
                    source: "qrc:/greenCic"
                    sourceSize: Qt.size(50,50)
                    Layout.alignment: Qt.AlignLeft
                    Layout.leftMargin: 158
                    Layout.topMargin: 25
                    fillMode: Image.PreserveAspectFit
                }

                Text
                {
                    id: exp3Dis
                    text: "3D Artist/Motion Graphics Artist"
                    font.family: philo.name
                    font.pixelSize: 30
                    Layout.alignment: Qt.AlignLeft
                    Layout.leftMargin: 50

                    Text
                    {
                        text: qsTr("Produce dynamic motion graphics, 3D renders, and Lottie files for\nonline applications, managing aspects like lighting, shading,\nmaterials, and textures. Create vector and raster graphics")
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
                id: exp4
                Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                Layout.topMargin: 50
                Layout.leftMargin: 50

                Text
                {
                    id: exp4text
                    text: "Trinity Science & Technology Guild"
                    font.family: philo.name
                    font.pixelSize: 30

                    Text
                    {
                        text: qsTr("Jan 2020 - Jan 2022")
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
                    Layout.leftMargin: 118
                    Layout.topMargin: 25
                    fillMode: Image.PreserveAspectFit
                }

                Text
                {
                    id: exp4Dis
                    text: "Mentor/Advisor"
                    font.family: philo.name
                    font.pixelSize: 30
                    Layout.alignment: Qt.AlignLeft
                    Layout.leftMargin: 50

                    Text
                    {
                        text: qsTr("Guide and mentor juniors while recruiting qualified robotics and tech\nenthusiasts from the college.")
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
            id: designBar
            width: parent.width
            height: 130
            color: "#628935"
            radius: 70
            anchors.top: myWorkEx.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 200

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
            anchors.top: designBar.bottom
            anchors.topMargin: 200
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
                            text: qsTr("Mail me")
                            font.family: "Poppins"
                            font.styleName: "Medium"
                            font.pixelSize: 25
                            color: "#FFFFFF"
                            anchors.centerIn: parent
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
    }
}
