from datetime import date
from typing import Optional

from pydantic import BaseModel, Field, EmailStr


class UserBase(BaseModel):
    name: str = Field(..., min_length=3, max_length=30)
    lastname: str = Field(..., min_length=3, max_length=30)
    birth_date: Optional[date] = Field(default=None)
    email: EmailStr = Field(...)
    country: str = Field(...)


class User(UserBase):
    id: int = Field(..., default=0)