INTERFACE zif_lab_eagm_04_employee
  PUBLIC .
  METHODS:
    get_employees_count RETURNING VALUE(rv_employees) TYPE i.
ENDINTERFACE.
