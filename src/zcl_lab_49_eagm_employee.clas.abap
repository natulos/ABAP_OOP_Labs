CLASS zcl_lab_49_eagm_employee DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA:
     table_employee_notified TYPE TABLE of string.

    METHODS:
      constructor,
      on_payroll_paid FOR EVENT payroll_paid OF zcl_lab_48_eagm_admin_dep importing ev_employee.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_49_eagm_employee IMPLEMENTATION.
  METHOD constructor.
    SET HANDLER me->on_payroll_paid FOR ALL INSTANCES.
  ENDMETHOD.

  METHOD on_payroll_paid.
    APPEND |Employee: { ev_employee } notified| TO table_employee_notified.
  ENDMETHOD.



ENDCLASS.
