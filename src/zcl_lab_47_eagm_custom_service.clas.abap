CLASS zcl_lab_47_eagm_custom_service DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA:
     new_call_number TYPE string.

    CLASS-METHODS:
      on_new_call FOR EVENT new_call OF zcl_lab_46_eagm_m_operator IMPORTING ev_phone_number.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_47_eagm_custom_service IMPLEMENTATION.
  METHOD on_new_call.
    new_call_number = |Call incoming: { ev_phone_number }|.
  ENDMETHOD.

ENDCLASS.
