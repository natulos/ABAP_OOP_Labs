CLASS zcl_lab_72_eagm_users DEFINITION INHERITING FROM zcl_lab_70_eagm_observer
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA:
        new_publicaton TYPE string.

    METHODS:
      on_new_publication REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_72_eagm_users IMPLEMENTATION.

  METHOD on_new_publication.
    me->new_publicaton = ev_new_publication.
  ENDMETHOD.

ENDCLASS.
