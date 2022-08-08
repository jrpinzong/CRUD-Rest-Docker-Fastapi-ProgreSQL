import psycopg2

try:
    connection = psycopg2.connect(
        host="127.0.0.1",
        user="root",
        password="password",
        database="DataBase",
        port="5432"
    )
except psycopg2.Error as err:
    connection = None

#connection.autocommit = True


def insertUser(data: dict):

    if connection != None:

        pointer = connection.cursor()
        query = f""" INSERT INTO users (name, last_name, birth_date, email, country)
                        VALUES ('{data['name']}','{data['last_name']}','{data['birth_date']}','{data['email']}','{data['country']}') """

        try:
            pointer.execute(query)
            connection.commit()
        except psycopg2.Error as err:
            e = {}
            e[f"{err.pgcode}"] = err
            return e
        finally:
            pointer.close()
        return data


def readUser(user_id: int):

    if connection != None:

        pointer = connection.cursor()
        query = f""" SELECT * FROM users
                    WHERE id={user_id} """

        try:
            pointer.execute(query)
            connection.commit()
            data = pointer.fetchone()
        except psycopg2.Error as err:
            e = {}
            e[f"{err.pgcode}"] = err
            return e
        finally:
            pointer.close()        
        return data


def updateUser(data: dict):

    if connection != None:
        pointer = connection.cursor()
        query = f""" UPDATE users
                    SET name='{data['name']}',last_name='{data['last_name']}',birth_date='{str(data['birth_date'])}',email='{data['email']}',country='{data['country']}'
                    WHERE id={data['id']} """
        try:
            pointer.execute(query)
            connection.commit()
        except psycopg2.Error as err:
            e={}
            e[f"{err.pgcode}"]= err
            return (e)        
        finally:
            pointer.close()
        return data


def deleteUser(user_id: int):

    if connection != None:
        pointer = connection.cursor()
        query = f""" DELETE FROM users
                    WHERE id={user_id} """
        try:
            pointer.execute(query)
            connection.commit()
        except psycopg2.Error as err:
            e = {}
            e[f"{err.pgcode}"] = err
            return (e)
        finally:
            pointer.close()
        return user_id