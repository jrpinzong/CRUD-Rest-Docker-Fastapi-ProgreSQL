import psycopg2


class Db():
    
    connection = None

    def __init__(self) -> None:
        
        try:
            self.connection = psycopg2.connect(
                host="db",
                user="root",
                password="password",
                database="DataBase",
                port="5432"
            )
            print("Connection OK")

        except psycopg2.Error as err:
            print(f">>> DbError =   {err.pgcode} : {err.pgerror}")
            self.connection = None


    def insertUser(self, data: dict):

        if self.connection != None:

            pointer = self.connection.cursor()
            query = f""" INSERT INTO users (name, last_name, birth_date, email, country)
                            VALUES ('{data['name']}','{data['last_name']}','{data['birth_date']}','{data['email']}','{data['country']}') """

            try:
                pointer.execute(query)
                self.connection.commit()
            except psycopg2.Error as err:
                e = {}
                e[f"{err.pgcode}"] = err.pgerror
                return e
            finally:
                pointer.close()
            return data


    def readUser(self, user_id: int):

        if self.connection != None:

            pointer = self.connection.cursor()
            query = f""" SELECT * FROM users
                        WHERE id={user_id} """

            try:
                pointer.execute(query)
                self.connection.commit()
                data = pointer.fetchone()
            except psycopg2.Error as err:
                e = {}
                e[f"{err.pgcode}"] = err.pgerror
                return e
            finally:
                pointer.close()        
            return data


    def updateUser(self, data: dict):

        if self.connection != None:
            pointer = self.connection.cursor()
            query = f""" UPDATE users
                        SET name='{data['name']}',last_name='{data['last_name']}',birth_date='{str(data['birth_date'])}',email='{data['email']}',country='{data['country']}'
                        WHERE id={data['id']} """
            try:
                pointer.execute(query)
                self.connection.commit()
            except psycopg2.Error as err:
                e={}
                e[f"{err.pgcode}"]= err.pgerror
                return (e)        
            finally:
                pointer.close()
            return data


    def deleteUser(self, user_id: int):

        if self.connection != None:
            pointer = self.connection.cursor()
            query = f""" DELETE FROM users
                        WHERE id={user_id} """
            try:
                pointer.execute(query)
                self.connection.commit()
            except psycopg2.Error as err:
                e = {}
                e[f"{err.pgcode}"] = err.pgerror
                return (e)
            finally:
                pointer.close()
            return user_id