CLASS zcl_lab_54_eagm_bank DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      transfer IMPORTING iv_iban       TYPE string
               RETURNING VALUE(rv_log) TYPE string
               RAISING zcx_lab_55_auth_iban_9387
               RESUMABLE(zcx_lab_55_eagm_auth_iban).
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_54_eagm_bank IMPLEMENTATION.

  METHOD transfer.
    IF iv_iban = 'ES95 4329 8765 4321'.
      RAISE RESUMABLE EXCEPTION TYPE zcx_lab_55_eagm_auth_iban.
    ELSE.
      rv_log = |{ rv_log }Correct IBAN: { iv_iban }|.
    ENDIF.
  ENDMETHOD.

ENDCLASS.
