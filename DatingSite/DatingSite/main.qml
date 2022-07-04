import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow
{
    id: window
    width: 800
    height: 600
    visible: true
    title: "Dating site"

    SwipeView
    {
        id: swipe_view
        anchors
        {
            left: parent.left
            top: tab_bar.bottom
            right: parent.right
            bottom: parent.bottom
        }

        currentIndex: tab_bar.currentIndex

        Me
        {
            id: me
        }

        Partner
        {
            id: partner
        }

    }

    TabBar
    {
        id: tab_bar
        currentIndex: swipe_view.currentIndex
        width: parent.width

        TabButton
        {
            text: "Me"
        }
        TabButton
        {
            text: "Partner"
        }
    }


    Button
    {
        text: "Регистрация"
        anchors
        {
            left: parent.left
            right: parent.right
            bottom: parent.bottom

            leftMargin: 10
            rightMargin: 10
        }

        onClicked:
        {
            if(!me.isEntered())
            {
                console.log("Данные заполнены не полностью!")
                return
            }

            console.log("Me:")
            console.log(me.getAge())
            console.log(me.getCity())
            console.log(me.getEducation())
            console.log(me.getGender())
            console.log(me.getHobbies())
            console.log(me.getName())

            console.log("Partner:")
            console.log(partner.getGender())
            console.log(partner.getEducation())
            console.log(partner.getRangeAge())
        }
    }
}
