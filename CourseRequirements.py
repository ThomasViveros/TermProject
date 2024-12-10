from mongoengine import *
from Degrees import Degrees

class CourseRequirements(Document):
    #Foreign key
    degrees = ReferenceField(Degrees, required=True, reverse_delete_rule=DENY,primary_key=True)

    description = StringField(db_name='description',required=True,max_length=255)
    totalUnit = IntField(db_name='total_unit',required=True,min_value=1)

    meta = {'allow_inheritance': True}

    def __init__(self, degrees, description : str, totalUnit:int,**kwargs):
        super().__init(**kwargs)
        self.degrees = degrees
        self.description = description
        self.totalUnit = totalUnit


    def __str__(self):
        return f'Description: {self.description}\nTotal units: {self.totalUnit}'