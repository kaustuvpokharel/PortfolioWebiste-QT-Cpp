import QtQuick 2.15

Text {
    id: fonts //Nautigal
    text: ""
    FontLoader
    {
        id: nautigal
        source: "qrc:/Nautigal"
    }
    FontLoader
    {
        id: philo
        source: "qrc:/PhiloBold"
    }
}
