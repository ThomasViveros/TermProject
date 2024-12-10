from CourseRequirements import CourseRequirements
from mongoengine import *


class Totals(CourseRequirements):
    requiredUnit = IntField(db_name='required_unit', required=True,min_value=1)

    def __init(self, degrees, description: str, totalUnit: int, requiredUnit: int, **kwargs):
        super().__init__(degrees, description, totalUnit)
        self.requiredUnit = requiredUnit

    def __str__(self):
        return super().__str__() + f'\nRequired Unit: {self.requiredUnit}'
