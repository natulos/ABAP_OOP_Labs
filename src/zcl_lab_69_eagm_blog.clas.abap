CLASS zcl_lab_69_eagm_blog DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
       set_new_publication IMPORTING iv_new_publication TYPE string,
       get_new_publication RETURNING VALUE(rv_new_publication) TYPE string.

    EVENTS:
        new_publication EXPORTING VALUE(ev_new_publication) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
        last_publication TYPE string.
ENDCLASS.


CLASS zcl_lab_69_eagm_blog IMPLEMENTATION.

  METHOD set_new_publication.
    me->last_publication = iv_new_publication.
    RAISE EVENT new_publication EXPORTING ev_new_publication = me->last_publication.
  ENDMETHOD.

  METHOD get_new_publication.
    rv_new_publication = me->last_publication.
  ENDMETHOD.

ENDCLASS.
