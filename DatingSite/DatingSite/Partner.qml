import QtQuick 2.15
import QtQuick.Controls 2.15

Item
{

    function getGender()
    {
        return gender.currentText
    }

    function getEducation()
    {
        return gender.currentText
    }


    function getRangeAge()
    {
        var arr = [age_from.text, age_to.text]
        return arr
    }

    Column
    {

        anchors.centerIn: parent
        width: 500

        Row
        {
            spacing: 10
            width: parent.width
            ComboBox
            {
                id: gender
                width: parent.width / 2
                model: [ "Мужчина", "Женщина" ]
            }

            ComboBox
            {
                id: education
                width: parent.width / 2
                model:
                [
                    "Дошкольное",
                    "Начальное общее",
                    "Основное общее",
                    "Среднее общее",
                    "Среднее профессиональное",
                    "Бакалавриат",
                    "Специалитет",
                    "Магистратура"
                ]
            }

        }

        Text
        {
            width: parent.width
            text: "Возраст"
            font.pointSize: 17
            color: "white"
            horizontalAlignment: Text.AlignHCenter
        }

        Row
        {
            width: parent.width
            Text
            {
                id: age_from
                width: parent.width - 15
                text: parseInt(slider.first.value)
                font.pointSize: 17
                color: "white"
                horizontalAlignment: Text.AlignLeft
            }
            Text
            {
                id: age_to
                text: parseInt(slider.second.value)
                font.pointSize: 17
                color: "white"
                horizontalAlignment: Text.AlignRight
            }
            anchors.horizontalCenter: parent.horizontalCenter
        }

        RangeSlider
        {
            snapMode: "SnapAlways"
            stepSize: 1
            id: slider
            width: parent.width
            first.value: 18
            second.value: 36
            from: 0
            to: 100
        }
    }

}
