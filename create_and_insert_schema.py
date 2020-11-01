import mysql.connector

file = open('CREATE_schema.sql')
sql = file.read()

cnx = mysql.connector.connect(user='root', password='root', host='127.0.0.1')
cursor = cnx.cursor()

cursor.execute("CREATE DATABASE  IF NOT EXISTS `dbms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;")
cursor.execute("USE `dbms`;")

for result in cursor.execute(sql, multi=True):
  if result.with_rows:
    print("Rows produced by statement '{}':".format(
      result.statement))
    print(result.fetchall())
  else:
    print("Number of rows affected by statement '{}': {}".format(
      result.statement, result.rowcount))
file.close()

cursor.execute("USE `dbms`;")
trigger="""CREATE DEFINER=`root`@`localhost` TRIGGER `vpermit_AFTER_INSERT` AFTER INSERT ON `vpermit` FOR EACH ROW BEGIN
IF (NEW.type = 'regular' AND NEW.lotname='freedom lot') THEN
	UPDATE `dbms`.`space`
	SET
	`visitor_spaces` = visitor_spaces - 1,
	`starting_space_visitor` = starting_space_visitor + 1
	WHERE `parkinglot` = 'freedom lot';
END IF;
IF (NEW.type = 'regular' AND NEW.lotname='premiere lot') THEN
	UPDATE `dbms`.`space`
	SET
	`visitor_spaces` = visitor_spaces - 1,
	`starting_space_visitor` = starting_space_visitor + 1
	WHERE `parkinglot` = 'premiere lot';
END IF;
IF (NEW.type = 'regular' AND NEW.lotname='justice lot') THEN
	UPDATE `dbms`.`space`
	SET
	`visitor_spaces` = visitor_spaces - 1,
	`starting_space_visitor` = starting_space_visitor + 1
	WHERE `parkinglot` = 'justice lot';
END IF;
IF (NEW.type = 'handicapped' AND NEW.lotname='freedom lot') THEN
	UPDATE `dbms`.`space`
	SET
	`visitor_spaces` = visitor_spaces - 1,
	`visitor_handicap_space` = visitor_handicap_space -1,
	`starting_space_handicap` = starting_space_handicap + 1
	WHERE `parkinglot` = 'freedom lot';
END IF;
IF (NEW.type = 'handicapped' AND NEW.lotname='premiere lot') THEN
	UPDATE `dbms`.`space`
	SET
	`visitor_spaces` = visitor_spaces - 1,
	`visitor_handicap_space` = visitor_handicap_space -1,
	`starting_space_handicap` = starting_space_handicap + 1
	WHERE `parkinglot` = 'premiere lot';
END IF;
IF (NEW.type = 'handicapped' AND NEW.lotname='justice lot') THEN
	UPDATE `dbms`.`space`
	SET
	`visitor_spaces` = visitor_spaces - 1,
	`visitor_handicap_space` = visitor_handicap_space -1,
	`starting_space_handicap` = starting_space_handicap + 1
	WHERE `parkinglot` = 'justice lot';
END IF;
IF (NEW.type = 'electric' AND NEW.lotname='freedom lot') THEN
	UPDATE `dbms`.`space`
	SET
	`visitor_spaces` = visitor_spaces - 1,
	`visitor_electric_space` = visitor_electric_space -1,
	`starting_space_electric` = starting_space_electric + 1
	WHERE `parkinglot` = 'freedom lot';
END IF;
IF (NEW.type = 'electric' AND NEW.lotname='premiere lot') THEN
	UPDATE `dbms`.`space`
	SET
	`visitor_spaces` = visitor_spaces - 1,
	`visitor_electric_space` = visitor_electric_space -1,
	`starting_space_electric` = starting_space_electric + 1
	WHERE `parkinglot` = 'premiere lot';
END IF;
IF (NEW.type = 'electric' AND NEW.lotname='justice lot') THEN
	UPDATE `dbms`.`space`
	SET
	`visitor_spaces` = visitor_spaces - 1,
	`visitor_electric_space` = visitor_electric_space -1,
	`starting_space_electric` = starting_space_electric + 1
	WHERE `parkinglot` = 'justice lot';
END IF;
END;
"""
cursor.execute(trigger)

file = open('INSERT_schema.sql')
insert_sql = file.read()

for result in cursor.execute(insert_sql, multi=True):
  if result.with_rows:
    print("Rows produced by statement '{}':".format(
      result.statement))
    print(result.fetchall())
  else:
    print("Number of rows affected by statement '{}': {}".format(
      result.statement, result.rowcount))

file.close()

cnx.close()
