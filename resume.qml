import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Pdf
import QtWebView

Page {
    background: Rectangle {
        color: "#FFFFFF"
    }

    Flickable
    {
        anchors.fill: parent
        contentWidth: parent.width // Adjust contentWidth based on your needs
        contentHeight: 2500

        WebView {
                id: pdfWebView
                width: parent.width
                height: parent.height

                onLoadingChanged:
                {
                    if (loadRequest.status === WebEngineView.LoadSucceeded)
                    {
                        // Set the PDF viewer options
                        pdfWebView.runJavaScript(`
                            var viewer = document.getElementById('viewer');
                            viewer.style.width = '100%';
                            viewer.style.height = '100%';
                            viewer.style.position = 'absolute';
                            viewer.style.top = '0';
                            viewer.style.left = '0';
                        `);
                    }
                }
            }

                Component.onCompleted: {
                    // Load the PDF file using PdfJs
                    pdfWebView.url = "qrc:/pdfjs-4.0.379-dist/web/viewer.html?file=qrc:/ResumeKP.pdf";
                }
    }
}
