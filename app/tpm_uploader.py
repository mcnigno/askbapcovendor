import os
import openpyxl
from app import db
from .models import Document
from flask_appbuilder.models.sqla.interface import SQLAInterface

def update_from_xlsx(file):
    session = db.session
    print('update FUNCTION!')
    book = openpyxl.load_workbook(file)
    sheet = book.active
    a1 = sheet['A6']
    print(a1.value)
    reserved_list = []
    updated_list = []
    for row in sheet.iter_rows(min_row=6):
        bapco_code = row[4].value
        oldcode = row[3].value
        print(bapco_code, oldcode)
        doc = db.session.query(Document).filter(Document.code == str(bapco_code)).first()

        if doc and doc.oldcode == 'empty':
            print('this is the ID' ,doc.id)
            datamodel = SQLAInterface(Document, session=session)
            print('BEFORE oldcode', doc.oldcode)
            doc.oldcode = oldcode
            updated_list.append([doc.id, doc.code, doc.oldcode])
            datamodel.edit(doc)

        else:
            reserved_list.append([doc.id, doc.code, doc.oldcode])
    return reserved_list, updated_list

def batch_xlsx():
    for file in os.listdir("./tmpdir"):
        if file.endswith(".xlsx"):
            print(os.path.join("./tmpdir", file))


batch_xlsx()