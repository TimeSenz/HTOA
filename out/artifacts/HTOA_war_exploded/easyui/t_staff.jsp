<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/8/15 0015
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <style>
        * {
            margin:0px;
            padding:0px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="<%=path %>/jquery-easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/jquery-easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/htoa/css/style.css"/>
    <script type="text/javascript" src="<%=path %>/htoa/js/jquery-3.0.0.min.js"></script>
    <script type="text/javascript" src="<%=path %>/jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=path %>/jquery-easyui/jquery.easyui.min.js"></script>

    <script>

        function setPagination(tableId) {
            var p = $("#" + tableId).datagrid("getPager"); // 获取由tableId指定的datagrid控件的分页组件
            $(p).pagination({
                pageList:[10, 15, 20],
                beforePageText:"第",
                afterPageText:"页    共{pages}页",
                displayMsg:"当前显示{from} - {to} 条记录    共{total}条记录",
                onBeforeRefresh:function() {
                    $(this).pagination("loading");
                    $(this).pagination("loaded");
                }
            });
        }

        $(function() {
            setPagination("list");
        });

        function edit() {
            var row = $("#list").datagrid("getSelected"); // 获取datagrid中被选中的行
            if (row) {
                $("#editForm").form("load", row);
                $("#editWin").window("open");
            } else {
                $.messager.alert('提示', '请选中需要修改的管理', 'info');// messager消息控件
            }
        }

        function add(){
            $("#addWin").window("open");
        }

        function doEdit() {
            if ($("#editForm").form("validate")) { // 验证整个表单里的所有validatabox是否通过验证
                $.post(
                        'product/update',
                        $("#editForm").serialize(),
                        function(data){
                            if(data.result == 'success'){
                                $.messager.alert("提示",data.msg,"info",function(){
                                    $("#editWin").window("close");
                                    $("#list").datagrid("reload");
                                });
                            }else{
                                $.messger.alert("提示",data.msg+"请稍后再试","info");
                            }
                        },"JSON")
            }
        }

        function doAdd(){
            if($("#addForm").form("validate")){
                $.post(
                        'product/add',
                        $("#addForm").serialize(),
                        function(data){
                            if(data.result == 'success'){
                                $.messager.alert("提示",data.msg,"info",function(){
                                    $("#addWin").window("close");
                                    $("#list").datagrid("reload");
                                    $("#addForm").form("clear");
                                });
                            }else{
                                $.messager.alert("提示",data.msg,"info");
                            }
                        },"JSON");
            }
        }
        function removePro(){
            var row = $("#list").datagrid("getSelected");
            if(row){
                $.post(
                        'product/remove',{'id':row.id},function(data){
                            if(data.result == 'success'){
                                $.messager.alert("提示",data.msg,"info",function(){
                                    $("#list").datagrid("reload");
                                });
                            }
                        },"JSON");
            }else{
                $.messager.alert("提示","请选择要移除的管理","info");
            }
        }
    </script>

</head>
<body>
<table id="list" class="easyui-datagrid" toolbar="#tb" data-options="
		url:'<%=path %>/product/queryByPager',
		method:'get',
		rownumbers:true,
		singleSelect:true,
		autoRowHeight: true,
		pagination:true,
		border:false,
		pageSize:10">
    <thead>
    <tr>
        <th field="t_adm_id" width="100">管理编号</th>
        <th field="t_adm_name" width="100">姓名</th>
        <th field="t_adm_email"  width="100">邮箱</th>
        <th field="t_adm_pwd"  width="100">密码</th>
        <th field="t_adm_phone"  width="100">电话</th>
    </tr>
    </thead>
</table>
<div id="tb" style="padding:10px;">
    <a href="javascript:;" class="easyui-linkbutton" data-options="iconCls:'icon-add'" onclick="add();">添加</a>
    <!-- 链接按钮控件 -->
    <a href="javascript:;" class="easyui-linkbutton" data-options="iconCls:'icon-remove'" onclick="edit();">修改</a>
    <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-remove'" onclick="removePro();">移除</a>
</div>
<div id="addWin" class="easyui-window" title="添加管理员" data-options="iconCle:'icon-edit',closable:true, closed:true" style="width:300px;height:200px;padding:5px;">
    <form id="addForm" enctype="multipart/form-data">
        <table>
            <tr>
                <td>管理编号</td>
                <td>
                    <input class="textbox" name="id"  />
                </td>
            </tr>
            <tr>
                <td>姓名</td>
                <td>
                    <input class="easyui-validatebox textbox" name="name" data-options="required:true, novalidate:true" />
                </td>
            </tr>
            <tr>
                <td>邮箱</td>
                <td>
                    <input class="easyui-validatebox easyui-numberbox" name="price" data-options="required:true, novalidate:true, precision:2"/>
                </td>
            </tr>
            <tr>
                <td>密码</td>
                <td>
                    <input class="easyui-validatebox easyui-numberbox" name="price" data-options="required:true, novalidate:true, precision:2"/>
                </td>
            </tr>
            <tr>
                <td>电话</td>
                <td>
                    <input class="easyui-validatebox easyui-numberbox" name="price" data-options="required:true, novalidate:true, precision:2"/>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="button" value="确认" onclick="doAdd();" />
                </td>
            </tr>
        </table>
    </form>
</div>
<div id="editWin" class="easyui-window" title="修改管理" data-options="iconCls:'icon-edit', closable:true, closed:true"  style="width:300px;height:200px;padding:5px;">
    <form id="editForm" enctype="multipart/form-data">
        <table>
            <tr>
                <td>管理编号</td>
                <td>
                    <input class="textbox" name="id" readonly />
                </td>
            </tr>
            <tr>
                <td>姓名</td>
                <td>
                    <input class="easyui-validatebox textbox" name="name" data-options="required:true, novalidate:true" />
                </td>
            </tr>
            <tr>
                <td>邮箱</td>
                <td>
                    <input class="easyui-validatebox easyui-numberbox" name="price" data-options="required:true, novalidate:true, precision:2"/>
                </td>
            </tr>
            <tr>
                <td>密码</td>
                <td>
                    <input class="easyui-validatebox easyui-numberbox" name="price" data-options="required:true, novalidate:true, precision:2"/>
                </td>
            </tr>
            <tr>
                <td>电话</td>
                <td>
                    <input class="easyui-validatebox easyui-numberbox" name="price" data-options="required:true, novalidate:true, precision:2"/>
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <input type="button" value="确认" onclick="doAdd();" />
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
