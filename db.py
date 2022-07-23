from fastapi import status

import psycopg2
from datetime import date

connection = psycopg2.connect(
    host="127.0.0.1",
    user="root",
    password="password",
    database="DataBase",
    port="5432"
)

connection.autocommit = True


def insertUser(data: dict):
    pointer = connection.cursor()
    query= f""" INSERT INTO users (name, last_name, birth_date, email, country) 
                VALUES ('{data['name']}','{data['last_name']}','{data['birth_date']}','{data['email']}','{data['country']}') """
    try:
        pointer.execute(query)
    except:
        print("Query no ejecutado")
    pointer.close()
    return data


def readUser(id:int):
    pointer = connection.cursor()
    query= f""" SELECT * FROM users 
                WHERE id={id} """
    try:
        pointer.execute(query)
        data= pointer.fetchone()
    except:
        print("Usuario no existe")
    pointer.close()
    return data


def updateUser(data:dict):
    pointer = connection.cursor()
    query= f""" UPDATE users
                SET name='{data['name']}',last_name='{data['lastname']}',birth_date='{str(data['birth_date'])}',email='{data['email']}',country='{data['country']}'
                WHERE id={data['id']} """
    try:
        pointer.execute(query)
    except:
        print("Query no ejecutado")
    pointer.close()
    return status.HTTP_202_ACCEPTED


def deleteUser(user_id):
    pointer = connection.cursor()
    query= f""" DELETE FROM users
                WHERE id={user_id} """
    try:
        pointer.execute(query)
    except:
        print("Query no ejecutado")
    pointer.close()
    return status.HTTP_202_ACCEPTED