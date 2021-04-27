-- Задания по SQL	
-- Даны две таблицы:
-- Список улиц   - Street (Id, Name)
-- Cписок жильцов   - Person (Id, FirstName, LastName, Age, Id_Street)

-- Задания:
-- Вывести общее число жителей
-- Вывести средний возраст жителей
-- Вывести отсортированный по алфавиту список фамилий без повторений
-- Вывести список фамилий, с указанием количества повторений этих фамилий в общем списке
-- Вывести фамилии, которые содержат в середине букву «б»
-- Вывести список «бомжей»
-- Вывести список несовершеннолетних, проживающих на проспекте Правды
-- Вывести упорядоченный по алфавиту список всех улиц с указанием, сколько жильцов живёт на улице
-- Вывести список улиц, название которых состоит из 6-ти букв
-- Вывести список улиц с количеством жильцов на них меньше 3.


1.  SELECT COUNT (*) FROM Person;
2.  SELECT  AVG(Age) FROM Person;
3.  SELECT DISTINCT LastName FROM Person ORDER BY LastName;
4.  SELECT LastName COUNT(*) FROM Person GROUP BY LastName;
5.  SELECT LastName COUNT(*) FROM Person LIKE '_%б%_';
6.  SELECT * FROM Person WHERE Id_Street IS NULL;
7.  SELECT * FROM Person JOIN Street  WHERE Person.Id_Street = Street.Id AND Age < 18 AND Street.Name LIKE 'проспект Правды';
8.  SELECT Street.Id, Street.Name, COUNT(Person.Id) FROM Street JOIN Person ON Street.Id = Person.Id_Street  GROUP BY Street.Id, Street.Name;
9.  SELECT * FROM Street WHERE LENGTH(Name) = 6;
10. SELECT Street.Id, Street.Name FROM Street JOIN Person ON Street.Id = Person.Id_Street GROUP BY Street.Id, Street.Name HAVING COUNT(Person.d) < 3






