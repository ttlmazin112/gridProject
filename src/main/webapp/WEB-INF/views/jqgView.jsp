<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>jqGrid</title>
  	<link rel="stylesheet" type="text/css" href="/resources/css/jquery-ui.css">
  	<link rel="stylesheet" type="text/css" href="/resources/css/ui.jqgrid.css">
  	
     <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
  <!-- <script type="text/javascript" src="/resources/js/jquery-1.11.0.min.js"></script> -->
  	<script type="text/javascript" src="/resources/js/i18n/grid.locale-kr.js"></script>
  	<script type="text/javascript" src="/resources/js/jquery.jqGrid.min.js"></script>
  	

  


</head>
<body>

 <table id="jqGrid">
 </table>
<div id="jqGridPager"></div>

<script type="text/javascript"> 
        $(document).ready(function () {
            $("#jqGrid").jqGrid({
               url:"jqgViewData",
               mtype: "POST",
               datatype: "json",
              
               postData: {"param1":$("#param1").val(),"param2":$("#param2").val()},
               cellurl:'jqCellDataSet',
               jsonReader:{
            	 page : "page",
            	 total:"total",
            	 root:"result",
            	 records:"record",
            	 repeatitems:false
               },
         
                colModel: [
                           { name: 'sngid', index: 'sngid', size: '3%',search:true,editable:false,align:'center',key:true},
                           { name: '_geometry', index: '_geometry', size: '3%',hidden:true,align:'center'},
                           { name: 'srvrsv_id', index: 'srvrsv_id', size: '4%',editable:true,align:'center' },
                           { name: 'srvrsv_nm', index: 'srvrsv_nm', size: '3%',editable:true,align:'center'},
                           { name: 'scale_se', index: 'scale_se', size: '3%',editable:true,align:'center' },
                           { name: 'ftype', index: 'ftype', size: '3%',editable:true,align:'center' },
                           { name: 'adres_cn', index: 'adres_cn', size: '3%',editable:true,align:'center' },
                           { name: 'fltplt_id', index: 'fltplt_id', size: '3%',editable:true,align:'center' },
                           { name: 'plot_ar', index: 'plot_ar', size: '3%',editable:true,align:'center' },
                           { name: 'cnstrc_cmp', index: 'cnstrc_cmp', size: '3%',editable:true,align:'center' },
                           { name: 'cntrwk_spr', index: 'cntrwk_spr', size: '3%',editable:true,align:'center' },
                           { name: 'tot_cntrwk', index: 'tot_cntrwk', size: '3%',editable:true,align:'center' },
                           { name: 'fclty_cpct', index: 'fclty_cpct', size: '3%' ,editable:true,align:'center'},
                           { name: 'ground_hg', index: 'ground_hg', size: '4%' ,editable:true,align:'center'},
                           { name: 'undgrnd_bp', index: 'undgrnd_bp', size: '3%',editable:true,align:'center' },
                           { name: 'srvrsv_mtr', index: 'srvrsv_mtr', size: '3%',editable:true,align:'center' },
                           { name: 'hgh_wal_hg', index: 'hgh_wal_hg', size: '3%',editable:true,align:'center'},
                           { name: 'low_wal_hg', index: 'low_wal_hg', size: '4%',editable:true,align:'center' },
                           { name: 'fclty_al', index: 'fclty_al', size: '3%',editable:true,align:'center'},
                           { name: 'top_al', caption: 'top_al', size: '3%',editable:true,align:'center'},
                           { name: 'lwet_al', index: 'lwet_al', size: '3%',editable:true,align:'center'},
                           { name: 'drng_ty_dc', index: 'drng_ty_dc', size: '3%',editable:true,align:'center' },
                           { name: 'wsp_time', index: 'wsp_time', size: '3%',editable:true,align:'center'},
                           { name: 'dail_wsp_q', index: 'dail_wsp_q', size: '4%',editable:true,align:'center' },
                           { name: 'valve_calb', index: 'valve_calb', size: '3%',editable:true,align:'center' },
                           { name: 'valve_inst', index: 'valve_inst', size: '3%',editable:true,align:'center' },
                           { name: 'atmc_valve', index: 'atmc_valve', size: '3%',editable:true,align:'center'},
                           { name: 'fence_fclt', index: 'fence_fclt', size: '3%' ,editable:true,align:'center'},
                           { name: 'drn_pline_', index: 'drn_pline_', size: '4%' ,editable:true,align:'center'},   
                           { name: 'drn_pline1', index: 'drn_pline1', size: '4%',editable:true,align:'center' },
                           { name: 'rm_cn', index: 'rm_cn', size: '4%',editable:true,align:'center' },
                           { name: 'input_de', index: 'input_de', size: '4%',editable:true,align:'center', editoptions:{
                       		dataInit :function(element){$(element).datepicker({dateFormat:'yy-mm-dd'})}}},
                           { name: 'name', index: 'name', size: '4%',editable:true,align:'center' },
                           { name: 'register_i', index: 'register_i', size: '4%',editable:true,align:'center' },
                           { name: 'gu_id', index: 'gu_id', size: '4%',editable:true,align:'center' },
                           { name: 'compet_de', index: 'compet_de', size: '4%',editable:true,align:'center',editoptions:{
                        	dataInit : function(element){$(element).datepicker({dateFormat:'yy-mm-dd'})}}},
                           { name: 'bizplc_id', index: 'bizplc_id', size: '4%',editable:true,align:'center' },
                           { name: 'wsp_area_d', index: 'wsp_area_d', size: '4%',editable:true,align:'center' },
                           { name: 'updt_de', index: 'updt_de', size: '4%',editable:true,align:'center', editoptions:{
                       		dataInit : function(element){$(element).datepicker({dateFormat:'yy-mm-dd'})}}},
                           { name: 'nadres_cn', index: 'nadres_cn', size: '4%',editable:true,align:'center' },
                           { name: 'adstrd_id', index: 'adstrd_id', size: '4%',editable:true,align:'center' },
                           { name: 'legaldong_', index: 'legaldong_', size: '4%',editable:true,align:'center' },
                           { name: 'hydt_co', index: 'hydt_co', size: '4%',editable:true,align:'center' },
                           { name: 'wsp_gnr_co', index: 'wsp_gnr_co', size: '4%',editable:true,align:'center' },
                           { name: 'wsp_popltn', index: 'wsp_popltn', size: '4%',editable:true,align:'center' },
                           { name: 'fclts_cl_c', index: 'fclts_cl_c', size: '4%',editable:true ,align:'center'},
                           { name: 'explr_nm', index: 'explr_nm', size: '4%' ,editable:true,align:'center'},
                           { name: 'mesr_id', index: 'mesr_id', size: '4%',editable:true,align:'center' },
                           { name: 'dmo1400_id', index: 'dmo1400_id', size: '4%',editable:true,align:'center' },
                           { name: 'srvrsv_se', index: 'srvrsv_se', size: '4%',editable:true,align:'center' },
                           { name: 'view_lvl', index: 'view_lvl', size: '4%',editable:true,align:'center',edittype:"select",editoptions:{value:"0:?????????;1:1??? ??????;2:2??? ??????"} },
                           { name: 'jfac_code', index: 'jfac_code', size: '4%',editable:true,align:'center' }
                           
                ],
                             
                multiselect:true, //?????? ????????? ????????? ????????? ????????? ?????????.
                sortname:"sngid",// ?????? ???????????? ????????? ?????? ?????? ?????? ??????
                sortorder:"asc", //????????????
                sortable:true,//colmodel?????? sortable ?????? ??????????????? true
                caption:"jq?????????",//????????? ????????? ???????????? ????????? ????????? ??? ??????
                emptyrecords:"???????????? ????????????", //???????????? ????????? ????????? ??????
                cellEdit:true, //cell ?????? ????????? ??????????????? true
                viewrecords: true,
              	autowidth:true, //?????? ?????? ??????(width ????????? ?????? ?????? ??????)
               	rownumbers:true, //row??? ????????? ???????????????.
                height: true,
                rowNum: 10, //??? ????????? ????????? row??? ???
                rowList:[10,20,30,40,50], //??? ???????????? ??? ??? ?????? row??? ?????? ?????? ??????
                pager: "#jqGridPager",
                pgbuttons:true,
                pginput:true,
                shrinkToFit: true,
                editable:true,
                afterSaveCell : function(rowid, name, val, iRow, iCol) {
                	
                	if(confirm('??????????????????????????') ) {                	
    					// do something
    					location.reload();
    					return [true,'?????????????????????.'];
    				}else{
    					
                			alert('????????? ???????????????.');
                			location.reload();              	
    				}
    					
    			},

            });
            $('#jqGrid').navGrid('#jqGridPager',
                    // ??????, ??????, ?????? ??????
                    { edit: true, add: true, del: true, search: true, refresh: true, view: true, position: "left", cloneToTop: false },
                    // ????????????
                    {
                        editCaption: "????????????",
                        url:"jqDataSet", //?????? ????????? ??? ?????? ????????? ????????? ????????? URL
                        recreateForm: true,
    					checkOnUpdate : true,
    					//checkOnSubmit : false,
    					beforeSubmit : function( postdata, form , oper) {
    						
    						if( confirm('??????????????????????????') ) {
    							// do something
    							return [true,'?????????????????????.'];
    						} else {
    							return [false, '????????????!'];
    						}
    					},
                        closeAfterEdit: true,
                        errorTextFormat: function (data) {
                            return 'Error: ' + data.responseText
                        }
                    },
                    // ?????? ??????
                    {
                        closeAfterAdd: true,
                        recreateForm: true,
                        errorTextFormat: function (data) {
                            return 'Error: ' + data.responseText
                        }
                    },
                    // ????????????
                    {
                    	url:"dateDel",
                    	
                    	
                        errorTextFormat: function (data) {
                            return 'Error: ' + data.responseText
                        }
                    });
          
        });
</script>

 



</body>
</html>