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

        Rectangle
        {
            id: gif
            width: 1920
            height: 535
            anchors.top: headerBar.bottom
            anchors.topMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter
            color: "#313131"
            radius: 100

            AnimatedImage
            {
                id: gifImage
                source: "qrc:/main"
                width: 1920  /1.29// Set the width explicitly
                height: 654 / 1.29 // Set the height explicitly
                //anchors.fill: parent

                anchors.verticalCenter:  parent.verticalCenter
                fillMode: Image.PreserveAspectFit
                anchors.horizontalCenter: parent.horizontalCenter
                clip: true



                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    propagateComposedEvents: true
                    acceptedButtons: Qt.LeftButton
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        // Open the HTTP link when clicked
                        Qt.openUrlExternally("https://www.behance.net/kaustuvpokharel3")
                    }
                }
            }

            Rectangle
            {
                id: layerB
                width: 1920
                height: 535
                anchors.topMargin: 50
                anchors.horizontalCenter: parent.horizontalCenter
                color: "#313131"
                opacity: 0.85
            }

            Text
            {
                id: label2Text
                text: qsTr("<html><font color='#628935'>3D/Graphics</font> Projects</html>")
                FontLoader
                {
                    id: philo
                    source: "qrc:/PhiloBold"
                }
                font.family: philo.name
                font.pixelSize: 70
                color: "#FFFFFF"

                anchors.horizontalCenter: layerB.horizontalCenter
                anchors.verticalCenter: layerB.verticalCenter
            }
        }

        RowLayout
        {
            id: myp
            anchors.top: gif.bottom
            anchors.topMargin: 100
            spacing: 350

            Text
            {
                text: qsTr("<html>My <font color='#628935'>Project</font></html>")
                font.family: philo.name
                font.pixelSize: 50
                color: "#313131"
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
                color: "#313131"
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
            color: "#313131"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: myp.bottom
            anchors.topMargin: 30
            opacity: 0.3
        }

        GridLayout
        {
            id: projects
            columns: 3
            columnSpacing: 75
            rowSpacing: 75
            anchors.top: line1.bottom
            anchors.topMargin: 100
            anchors.horizontalCenter: parent.horizontalCenter

            Rectangle
            {
                id: pj1
                height: 520
                width: 420
                color: "#444444"
                radius: 30

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
                    text: "OpenCv-\nImageVideoProcessing\nAndroid-app"
                    font.family: philo.name
                    font.pixelSize: 30
                    color: "#FFFFFF"
                    anchors.bottom: linepj1.top
                    anchors.bottomMargin: 10
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
                        Qt.openUrlExternally("https://github.com/kastuv/OpenCv-QT-Image-videoProcessing")
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
                color: "#444444"
                radius: 30

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
                    text: "OpenCv-\nImageVideoProcessing\nAndroid-app"
                    font.family: philo.name
                    font.pixelSize: 30
                    color: "#FFFFFF"
                    anchors.bottom: linepj2.top
                    anchors.bottomMargin: 10
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
                        Qt.openUrlExternally("https://github.com/kastuv/OpenCv-QT-Image-videoProcessing")
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

            Rectangle
            {
                id: pj4
                height: 520
                width: 420
                color: "#444444"
                radius: 30

                Rectangle
                {
                    id: linepj4
                    height:1
                    width: parent.width
                    color: "#FFFFFF"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: pj4.top
                    anchors.topMargin: 120
                    opacity: 0.3
                }
                Text
                {
                    text: "OpenCv-\nImageVideoProcessing\nAndroid-app"
                    font.family: philo.name
                    font.pixelSize: 30
                    color: "#FFFFFF"
                    anchors.bottom: linepj4.top
                    anchors.bottomMargin: 10
                    anchors.left: pj4.left
                    anchors.leftMargin: 25
                }

                Rectangle
                {
                    width: 380
                    height: 300
                    radius: 30
                    anchors.bottom: imgPj4.bottom
                    anchors.horizontalCenter: imgPj4.horizontalCenter
                    anchors.bottomMargin: 40
                    color: "#FFFFFF"
                    opacity: 0.5
                }
                Rectangle
                {

                    width: 400
                    height: 300
                    radius: 30
                    anchors.bottom: imgPj4.bottom
                    anchors.horizontalCenter: imgPj4.horizontalCenter
                    anchors.bottomMargin: 20
                    color: "#FFFFFF"
                    opacity: 0.3
                }


                Rectangle
                {
                    id: imgPj4
                    width: 420
                    height: 300
                    radius: 30
                    anchors.bottom: pj4.bottom

                    Image {
                        id: img4
                        source: "qrc:/pj1"
                        anchors.fill: imgPj4
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
                        pj4.color = "#628935";
                        imgPj4.scale = 1.05;
                    }
                    onExited:
                    {
                        pj4.color = "#444444";
                        imgPj4.scale = 1;
                    }
                }
            }


            Rectangle
            {
                id: pj5
                height: 520
                width: 420
                color: "#444444"
                radius: 30

                Rectangle
                {
                    id: linepj5
                    height:1
                    width: parent.width
                    color: "#FFFFFF"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: pj5.top
                    anchors.topMargin: 120
                    opacity: 0.3
                }
                Text
                {
                    text: "OpenCv-\nImageVideoProcessing\nAndroid-app"
                    font.family: philo.name
                    font.pixelSize: 30
                    color: "#FFFFFF"
                    anchors.bottom: linepj5.top
                    anchors.bottomMargin: 10
                    anchors.left: pj5.left
                    anchors.leftMargin: 25
                }

                Rectangle
                {
                    width: 380
                    height: 300
                    radius: 30
                    anchors.bottom: imgPj5.bottom
                    anchors.horizontalCenter: imgPj5.horizontalCenter
                    anchors.bottomMargin: 40
                    color: "#FFFFFF"
                    opacity: 0.5
                }
                Rectangle
                {

                    width: 400
                    height: 300
                    radius: 30
                    anchors.bottom: imgPj5.bottom
                    anchors.horizontalCenter: imgPj5.horizontalCenter
                    anchors.bottomMargin: 20
                    color: "#FFFFFF"
                    opacity: 0.3
                }


                Rectangle
                {
                    id: imgPj5
                    width: 420
                    height: 300
                    radius: 30
                    anchors.bottom: pj5.bottom

                    Image {
                        id: img5
                        source: "qrc:/pj1"
                        anchors.fill: imgPj5
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
                        pj5.color = "#628935";
                        imgPj5.scale = 1.05;
                    }
                    onExited:
                    {
                        pj5.color = "#444444";
                        imgPj5.scale = 1;
                    }
                }
            }


            Rectangle
            {
                id: pj6
                height: 520
                width: 420
                color: "#444444"
                radius: 30

                Rectangle
                {
                    id: linepj6
                    height:1
                    width: parent.width
                    color: "#FFFFFF"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: pj6.top
                    anchors.topMargin: 120
                    opacity: 0.3
                }
                Text
                {
                    text: "OpenCv-\nImageVideoProcessing\nAndroid-app"
                    font.family: philo.name
                    font.pixelSize: 30
                    color: "#FFFFFF"
                    anchors.bottom: linepj6.top
                    anchors.bottomMargin: 10
                    anchors.left: pj6.left
                    anchors.leftMargin: 25
                }

                Rectangle
                {
                    width: 380
                    height: 300
                    radius: 30
                    anchors.bottom: imgPj6.bottom
                    anchors.horizontalCenter: imgPj6.horizontalCenter
                    anchors.bottomMargin: 40
                    color: "#FFFFFF"
                    opacity: 0.5
                }
                Rectangle
                {

                    width: 400
                    height: 300
                    radius: 30
                    anchors.bottom: imgPj6.bottom
                    anchors.horizontalCenter: imgPj6.horizontalCenter
                    anchors.bottomMargin: 20
                    color: "#FFFFFF"
                    opacity: 0.3
                }


                Rectangle
                {
                    id: imgPj6
                    width: 420
                    height: 300
                    radius: 30
                    anchors.bottom: pj6.bottom

                    Image {
                        id: img6
                        source: "qrc:/pj1"
                        anchors.fill: imgPj6
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
                        pj6.color = "#628935";
                        imgPj6.scale = 1.05;
                    }
                    onExited:
                    {
                        pj6.color = "#444444";
                        imgPj6.scale = 1;
                    }
                }
            }
        }

        Rectangle
        {
            id: blog
            width: parent.width
            height: 300
            color: "Transparent"
            radius: 50
            anchors.top:projects.bottom
            anchors.topMargin: 100

            Rectangle
            {
                id: bg
                width: parent.width
                height: 300
                color: "#628935"
                radius: 50
                opacity: 0.05
            }

            Text
            {
                id: skilltext
                text: qsTr("<html>My <font color='#628935'>Blogs</font></html>")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 50
                font.family: philo.name
                font.pixelSize: 50
                color: "#313131"

                Text
                {
                    text: "<html><i>Articles will be uploaded VERY SOON!</i></html>"
                    color: "#313131"
                    font.family: "poppins"
                    font.styleName: "light"
                    font.pixelSize: 20
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.bottom
                    anchors.topMargin: 50
                    opacity: 0.4
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
            anchors.top: blog.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 150

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
