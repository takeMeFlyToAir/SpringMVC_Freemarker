<#--
表格标签的参数说明:

id : table表格的id
-->
<#macro table id>
<table id="${id}" data-mobile-responsive="true" data-click-to-select="true">
    <thead>
    <tr>
        <th data-field="selectItem" data-checkbox="true"></th>
    </tr>
    </thead>
</table>
</#macro>