from datetime import date
from typing import Optional

from pydantic import BaseModel, Field, EmailStr


class UserBase(BaseModel):
    name: str = Field(..., min_length=3, max_length=30, example="Juan")
    last_name: str = Field(..., min_length=3, max_length=30, example="Pinzon")
    birth_date: Optional[date] = Field(default=None, example="1989-05-19")
    email: EmailStr = Field(..., example="email@email.com")
    country: str = Field(..., example="Colombia")


class User(UserBase):
    id: int = Field(...)
    