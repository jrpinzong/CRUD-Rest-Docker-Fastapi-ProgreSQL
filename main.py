from time import sleep

from fastapi import FastAPI
from fastapi import status, Response
from fastapi import Body, Path

from db import Db
import models


sleep(10)
app = FastAPI()
db = Db()


@app.get(path="/",
         status_code=status.HTTP_200_OK,
         summary= "Home",
         tags=["Users"]
        )
def home():
    """
    This path operation this is a home in the app

    Parameters: 
    - 
    
    Returns a json with the  information:
    - { "CRUD": {"Languaje": "Python", "Framework": "FastAPI", "database":"PostgreSQL"} }
    """
    return {"CRUD": {
                    "Languaje": "Python",
                    "Framework": "FastAPI", 
                    "database":"PostgreSQL"
                    }    

            }

  
@app.post(path="/users/",
        #response_model=models.UserBase,
        status_code=status.HTTP_201_CREATED,
        summary= "Create a User",
        tags=["Users"]
        )
def create_a_user(user_data: models.UserBase = Body(...)):
    
    row = user_data.dict()
    data = db.insertUser(row)
    
    return data


@app.get(path="/users/{user_id}",
        #response_model=models.User,
        status_code=status.HTTP_202_ACCEPTED,
        summary= "Show a User",
        tags=["Users"]
        )
def read_a_user(user_id: int = Path(...,
                            gt=0,
                            title="User ID",
                            description="This is the user id. It's requered"
                            ), response : Response = status.HTTP_202_ACCEPTED
                ):

    row = db.readUser(user_id)
    print(f">>>  {row}")
    data = {}
    if row is None:
        data[f"{user_id}"]= "HTTP_404_NOT_FOUND"
        response.status_code = status.HTTP_404_NOT_FOUND
    elif isinstance(row, tuple):
        data["id"]= row[0]
        data["name"]= row[1]
        data["last_name"]= row[2]
        data["birth_date"]= row[3]
        data["email"]= row[4]
        data["country"]= row[5]
    else:
        response.status_code = status.HTTP_417_EXPECTATION_FAILED
        return row

    return data


@app.put(path="/users/{user_id}/update",
        #response_model=models.User,
        status_code=status.HTTP_202_ACCEPTED,
        summary= "Update a User",
        tags=["Users"]
        )
def update_a_user(user_id: int = Path(...,
                            gt=0,
                            title="User ID",
                            description="This is the user id. It's requered"
                            ),
                  user_data: models.UserBase = Body(...),
                  response : Response = status.HTTP_202_ACCEPTED
                ):

    row = db.readUser(user_id)
    data={}
    if row is None:       
        data[f"{user_id}"]= "HTTP_404_NOT_FOUND"
        response.status_code = status.HTTP_404_NOT_FOUND
    elif isinstance(row, tuple):
        row = user_data.dict()
        row["id"] = user_id
        data = db.updateUser(row)
    else:
        response.status_code = status.HTTP_417_EXPECTATION_FAILED
        return row

    return data


@app.delete(path="/users/{user_id}/delete",
        #response_model=models.UserBase,
        status_code=status.HTTP_200_OK,
        summary= "Delete a User",
        tags=["Users"]
        )
def delete_a_user(user_id: int = Path(...,
                            gt=0,
                            title="User ID",
                            description="This is the user id. It's requered"
                            ),
                  response : Response = status.HTTP_200_OK
                ):

    row = db.readUser(user_id)
    data = {}
    if row is None:       
        data[f"{user_id}"]= "HTTP_404_NOT_FOUND"
        response.status_code = status.HTTP_404_NOT_FOUND
    elif isinstance(row, tuple):
        data["id"]= row[0]
        data["name"]= row[1]
        data["last_name"]= row[2]
        data["birth_date"]= row[3]
        data["email"]= row[4]
        data["country"]= row[5]
        row = db.deleteUser(user_id)
    else:
        response.status_code = status.HTTP_417_EXPECTATION_FAILED
        return row
    
    return data