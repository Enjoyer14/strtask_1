import sequtils, strutils, unicode  # Все нужные библиотеки уже подключены

var text = """Фонетическое значение буквы "ë" невозможно переоценить. Эта буква служит способом обозначить мягкость звука "е". Например, в словах "мёд", "лёд" и "снег" буква "ë" подчеркивает, что предшествующий ей согласный произносится мягко. Это важный аспект, так как мягкость согласных в русском языке играет ключевую роль в звучании слов и может изменять их смысл. Буква "ë" используется в непосредственно ограниченном количестве слов, что делает её менее распространенной, чем другие буквы. Однако именно это употребление в значимых контекстах и делает её важной. Слова, содержащие букву "ë", такие как "рёбра", "жёсткий" или "дёготь", нельзя заменить аналогичными словами с "е", так как это изменит их звучание и приведёт к утрате их первоначального смысла. Чтобы лучше понять использование буквы "ë", рассмотрим конкретные примеры. Слова "мёд", "ёлка", "горёшь", "снег", "чёрный" — все они иллюстрируют, как важна буква "ё" в передаче их правильного звучания и смысла. Изменение одной буквы может полностью изменить смысл слова. Например, "лёд" и "лед" — это два абсолютно разных слова с разными значениями."""

# Ниже произведите действия над переменной text

text = text.replace("е", "ё") #заменяем ё на е
text = text.replace(". ", ".\n") #Заменяем точку и последующий пробел на точку и на знак конца строка

var lines = text.split("\n") #Разбиваем строку на части

for i in 0..lines.len: 
    lines[i] = lines[i].reversed() #построчно переворачиваем предложения в тексте
    if i != (lines.len-1):
        lines[i].add("\n") #если предложение не последнее то добавляем в конец символ конца строки

text = lines.join() #объединяем в одну строку



# Не трогайте эту часть кода. Выводить text в консоль не обязательно.
doAssert text == """.ьтинёцоёрёп онжомзовён "ë" ывкуб ёинёчанз ёоксёчитёноФ
."ё" акувз ьтсокгям ьтичанзобо мобосопс тижулс авкуб атЭ
.окгям ястисонзиорп йынсалгос йё йищюувтсёшдёрп отч ,тёавикрёчдоп "ë" авкуб "гёнс" и "дёл" ,"дём" хаволс в ,рёмирпаН
.лсымс хи ьтянёмзи тёжом и волс ииначувз в ьлор юувёчюлк тёарги ёкызя мокссур в хынсалгос ьтсокгям как кат ,ткёпса йынжав отЭ
.ывкуб ёигурд мёч ,йоннёнартсорпсар ёёнём ёё тёалёд отч ,волс ёвтсёчилок моннёчинарго оннёвтсдёрсопён в ястёузьлопси "ë" авкуБ
.йонжав ёё тёалёд и хатскётнок хымичанз в ёинёлбёртопу отэ оннёми окандО
.алсымс огоньлачановрёп хи ётарту к тёдёвирп и ёиначувз хи тинёмзи отэ как кат ,"ё" с имаволс имынчиголана ьтинёмаз язьлён ,"ьтогёд" или "йиктсёж" ,"арбёр" как ёикат ,"ë" увкуб ёищажрёдос ,аволС
.ырёмирп ёынтёркнок миртомссар ,"ë" ывкуб ёинавозьлопси ьтяноп ёшчул ыботЧ
.алсымс и яиначувз огоньливарп хи ёчадёрёп в "ё" авкуб анжав как ,тюуриртсюлли ино ёсв — "йынрёч" ,"гёнс" ,"ьшёрог" ,"аклё" ,"дём" аволС
.аволс лсымс ьтинёмзи юьтсонлоп тёжом ывкуб йондо ёинёнёмзИ
.имяинёчанз имынзар с аволс хынзар онтюлосба авд отэ — "дёл" и "дёл" ,рёмирпаН"""