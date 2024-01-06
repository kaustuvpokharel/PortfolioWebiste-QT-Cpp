import QtQuick
import QtQuick.Controls
import QtWebView
import QtQuick.Layouts

Page
{

    background: Rectangle {
        color: "#FFFFFF"
    }
    //property string pdfResourcePath: "qrc:/ResumeKP.pdf"

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
                        //loader.push("qrc:/WEBSITE/resume.qml")
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

                    /loader.push("qrc:/WEBSITE/project.qml")
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



        // PdfDocument {
        //     id: doc
        //     source: pdfResourcePath

        //     onStatusChanged: {
        //         switch (doc.status) {
        //         case PdfDocument.Loading:
        //             console.log("PDF is loading...");
        //             break;
        //         case PdfDocument.Ready:
        //             console.log("PDF is ready.");
        //             break;
        //         case PdfDocument.Error:
        //             console.error("Error loading PDF:", doc.errorString);
        //             break;
        //         default:
        //             break;
        //         }
        //     }
        // }

        Rectangle {
            id: space
            color: "#FFFFFF"
            anchors.bottom: spaceBg.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            width: 1350  // Adjust this value based on your layout needs
            height: 600  // Adjust this value based on your layout needs
            radius: 50

            WebView {
                id: pdfWebView
                anchors.fill: parent
                url: "qrc:/pdf_viewer.html"  // HTML file using PDF.js

                onLoadingChanged: {
                    if (loadRequest.status === WebView.LoadSucceededStatus) {
                        pdfWebView.runJavaScript("loadPDF(':/pdf_viewer.html');");
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
            anchors.top: space.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 100

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

                        Text
                        {
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

                            MouseArea
                            {
                                id: naHome
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
                                    navHome.color = "#628935";
                                    navHome.font.styleName = "Medium";
                                }

                                onExited: {
                                    navHome.color = "#FFFFFF";
                                    navHome.font.styleName = "Light";
                                }
                            }
                        }

                        Text
                        {
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

                            MouseArea
                            {
                                id: naAbout
                                anchors.fill: parent
                                propagateComposedEvents: true
                                hoverEnabled: true
                                acceptedButtons: Qt.LeftButton
                                cursorShape: Qt.PointingHandCursor

                                onClicked:
                                {
                                    loader.push("qrc:/WEBSITE/about.qml")
                                    console.log("About button clicked: Test case")
                                }
                                onEntered: {
                                    navAbout.color = "#628935";
                                    navHome.font.styleName = "Medium";
                                }

                                onExited: {
                                    navAbout.color = "#FFFFFF";
                                    navAbout.font.styleName = "Light";
                                }
                            }
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

                            MouseArea
                            {
                                id: naResume
                                anchors.fill: parent
                                propagateComposedEvents: true
                                hoverEnabled: true
                                acceptedButtons: Qt.LeftButton
                                cursorShape: Qt.PointingHandCursor

                                onClicked:
                                {
                                    //loader.push("qrc:/WEBSITE/resume.qml")
                                    console.log("About button clicked: Test case")
                                }
                                onEntered: {
                                    navResume.color = "#628935";
                                    navResume.font.styleName = "Medium";
                                }

                                onExited: {
                                    navResume.color = "#FFFFFF";
                                    navResume.font.styleName = "Light";
                                }
                            }
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

                            MouseArea
                            {
                                id: naProject
                                anchors.fill: parent
                                propagateComposedEvents: true
                                hoverEnabled: true
                                acceptedButtons: Qt.LeftButton
                                cursorShape: Qt.PointingHandCursor

                                onClicked:
                                {
                                    loader.push("qrc:/WEBSITE/project.qml")
                                    console.log("About button clicked: Test case")
                                }
                                onEntered: {
                                    navProject.color = "#628935";
                                    navProject.font.styleName = "Medium";
                                }

                                onExited: {
                                    navProject.color = "#FFFFFF";
                                    navProject.font.styleName = "Light";
                                }
                            }
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
