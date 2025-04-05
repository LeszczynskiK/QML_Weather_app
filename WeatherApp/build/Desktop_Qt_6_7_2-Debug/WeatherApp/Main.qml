import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 1280
    height: 800
    title: qsTr("Weather forecast")

    StackView {//To manage navigation between pages
        id: stackView
        anchors.fill: parent
        initialItem: Item {
            Image {
                //by url to file
                source: "file:///home/krzysiek89/Desktop/QT_aplikacje/QML_Weather_App/WeatherApp/mainBackground.png"
                anchors.fill: parent//fill parent(parent is ApplicationWindow(
                fillMode: Image.PreserveAspectCrop//keep aspect of size if cropped png
            }



            Button {
                id: button1
                text: "Current weather"
                x: 25    // X coordinate
                y: 25    // Y coordinate
                width: 250 // Button width
                height: 125 // Button height
                onClicked: {
                    console.log("Weather")
                    stackView.push("qrc:/qt/qml/WeatherApp/weathermain.qml") //Open page with this view
                }

                // Customize font and appearance
                contentItem: Text {
                    text: button1.text
                    font.pixelSize: 27  // Font size set to
                    font.family: "Cantarell"
                    color: "#151818" //Text color

                    //put text on the middle of button
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                background: Rectangle {
                    color: "#cceb33"    // Background color
                    opacity: 0.8        // 80% transparency
                    border.width: 2 //2px frame around button
                    border.color: "#151818" //Frame colour
                }
            }

            Button {
                id: button2
                text: "Week prognose"
                x: 25    // X coordinate
                y: 175    // Y coordinate
                width: 250 // Button width
                height: 125 // Button height
                onClicked: {
                    console.log("Week prognose")
                    stackView.push("qrc:/qt/qml/WeatherApp/weathermain.qml") //Open page with this view
                }

                // Customize font and appearance
                contentItem: Text {
                    text: button2.text
                    font.pixelSize: 27  // Font size set to
                    font.family: "Brush Script MT"
                    color: "#151818" //Text color

                    //put text on the middle of button
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                background: Rectangle {
                    color: "#cceb33"    // Background color
                    opacity: 0.8        // 80% transparency
                    border.width: 2 //2px frame around button
                    border.color: "#151818" //Frame colour
                }
            }

            Button {
                id: button3
                text: "History"
                x: 25    // X coordinate
                y: 325    // Y coordinate
                width: 250 // Button width
                height: 125 // Button height
                onClicked: {
                    console.log("History")
                    stackView.push("qrc:/qt/qml/WeatherApp/weathermain.qml") //Open page with this view
                }

                // Customize font and appearance
                contentItem: Text {
                    text: button3.text
                    font.pixelSize: 27  // Font size set to 32
                    color: "#151818" //Text color

                    //put text on the middle of button
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                background: Rectangle {
                    color: "#cceb33"    // Background color
                    opacity: 0.8        // 80% transparency
                    border.width: 2 //2px frame around button
                    border.color: "#151818" //Frame colour
                }
            }


        }
    }
}
