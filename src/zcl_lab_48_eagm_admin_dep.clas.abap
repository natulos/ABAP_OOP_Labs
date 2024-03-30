CLASS zcl_lab_48_eagm_admin_dep DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA:
      id_employee TYPE string,
      log         TYPE string.

    EVENTS:
      payroll_paid EXPORTING VALUE(ev_employee) TYPE string.

    METHODS:
      constructor IMPORTING iv_id_employee TYPE string,
      notify_employee.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_48_eagm_admin_dep IMPLEMENTATION.
  METHOD constructor.
    me->id_employee = iv_id_employee.
  ENDMETHOD.

  METHOD notify_employee.
*    log = |Employee notified: { id_employee }|.
    RAISE EVENT payroll_paid EXPORTING ev_employee = id_employee.
    log = |Employee notified: { id_employee }|.
  ENDMETHOD.

ENDCLASS.
