from fastapi import FastAPI

from fastapi import status


app = FastAPI()


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
  