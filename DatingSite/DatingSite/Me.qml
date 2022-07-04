import QtQuick 2.15
import QtQuick.Controls 2.15


Item
{

    function isEntered()
    {
        return getName() && getAge() && getCity()
    }

    function getName()
    {
        return name.text
    }

    function getAge()
    {
        return age.text
    }

    function getCity()
    {
        return city.text
    }

    function getGender()
    {
        return gender.currentText
    }

    function getEducation()
    {
        return education.currentText
    }

    function addToCheckboxToArr(checkbox, arr)
    {
        if (checkbox.checked) arr.push(checkbox.text)
    }

    function getHobbies()
    {
        var result = []
        addToCheckboxToArr(hobbie_1, result)
        addToCheckboxToArr(hobbie_2, result)
        addToCheckboxToArr(hobbie_3, result)
        addToCheckboxToArr(hobbie_4, result)
        addToCheckboxToArr(hobbie_5, result)
        addToCheckboxToArr(hobbie_6, result)
        return result
    }

    Column
    {
        anchors.centerIn: parent
        width: 500

        Row
        {
            spacing: 10
            width: parent.width
            TextField
            {
                id: name
                width: parent.width / 2
                placeholderText: "Имя"
                horizontalAlignment: "AlignHCenter"
            }

            TextField
            {
                id: age
                width: parent.width / 2
                placeholderText: "Возраст"
                horizontalAlignment: "AlignHCenter"
                validator: RegularExpressionValidator { regularExpression: /^(?:1(?:00?|\d)|[2-5]\d|[6-9]\d?)$/ }
            }
            anchors.horizontalCenter: parent.horizontalCenter
        }

        TextField
        {
            id: city
            width: parent.width
            placeholderText: "Город"
            horizontalAlignment: "AlignHCenter"
            anchors.horizontalCenter: parent.horizontalCenter
            validator: RegularExpressionValidator { regularExpression: /[a-яА-Я]{0,}/ }
        }


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
        Row
        {
            id: row_hobbies
            Column
            {
                CheckBox
                {
                    id: hobbie_1
                    text: "Компьютерные игры"
                }
                CheckBox
                {
                    id: hobbie_2
                    text: "Настольные игры"
                }
            }
            Column
            {
                CheckBox
                {
                    id: hobbie_3
                    text: "Рукоделие"
                }
                CheckBox
                {
                    id: hobbie_4
                    text: "Моделизм"
                }
            }
            Column
            {
                CheckBox
                {
                    id: hobbie_5
                    text: "Программирование"
                }
                CheckBox
                {
                    id: hobbie_6
                    text: "Пазл"
                }
            }
            anchors.horizontalCenter: parent.horizontalCenter
        }


        Description
        {
            id: description
            placeHolderText: "Информация о себе"
            width: parent.width
        }

    }

}
