CLASS zcl_lab_53_eagm_check_user DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      check_user IMPORTING iv_uname TYPE syuname
                 RAISING   zcx_lab_52_eagm_operations.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_53_eagm_check_user IMPLEMENTATION.
  METHOD check_user.
    IF sy-uname = 'CB9980005959'.

      RAISE EXCEPTION TYPE zcx_lab_52_eagm_operations
        EXPORTING
          textid   = zcx_lab_52_eagm_operations=>no_access
          iv_msgv1 = |{ sy-uname }|.
    ELSE.
      "Regular process
    ENDIF.
  ENDMETHOD.

ENDCLASS.
