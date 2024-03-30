CLASS zcl_lab_51_eagm_wz_friend DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      get_helper.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_51_eagm_wz_friend IMPLEMENTATION.
  METHOD get_helper.

    DATA(lo_work_zone) = NEW zcl_lab_50_eagm_work_zone( ).

    DATA(rs_work_zone) = lo_work_zone->lo_helper->get_work_zone( ).

  ENDMETHOD.

ENDCLASS.
