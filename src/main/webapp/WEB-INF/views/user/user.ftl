<#assign contentBody>
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>用户管理</h5>
                </div>
                <div class="ibox-content">
                    <div class="row row-lg">
                        <div class="col-sm-12">
                                <div class="col-lg-12 col-sm-9">
                                    <div class="row">
                                        <div class="col-lg-10 col-sm-9">
                                            <div class="row">
                                                <div class="col-lg-4 col-sm-12">
                                                    <@p.nameCon id="name" name="用户名称" placeholder="帐号/姓名/手机号"/>
                                                </div>
                                                <div class="col-lg-4 col-sm-6">
                                                    <@p.timeCon id="beginTime" name="注册开始日期" isTime="false" pattern="YYYY-MM-DD"/>
                                                </div>
                                                <div class="col-lg-4 col-sm-6">
                                                    <@p.timeCon id="endTime" name="注册结束日期" isTime="false" pattern="YYYY-MM-DD"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-2 col-sm-3">
                                            <div class="row">
                                                <div class="col-lg-12 col-sm-12">
                                                    <@p.button name="搜索" icon="fa-search" clickFun="MgrUser.search()"/>
                                                    <@p.button name="重置" icon="fa-trash" clickFun="MgrUser.resetSearch()" space="true"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="hidden-xs" id="managerTableToolbar" role="group">
                                       <@p.button name="添加" icon="fa-plus" clickFun="MgrUser.openAddMgr()"/>
                                       <@p.button name="修改" icon="fa-edit" clickFun="MgrUser.openChangeUser()" space="true"/>
                                       <@p.button name="删除" icon="fa-remove" clickFun="MgrUser.delMgrUser()" space="true"/>
                                       <@p.button name="重置密码" icon="fa-refresh" clickFun="MgrUser.resetPwd()" space="true"/>
                                       <@p.button name="冻结" icon="fa-warning" clickFun="MgrUser.freezeAccount()" space="true"/>
                                       <@p.button name="解除冻结" icon="fa-check-circle" clickFun="MgrUser.unfreeze()" space="true"/>
                                       <@p.button name="角色分配" icon="fa-user-secret" clickFun="MgrUser.roleAssign()" space="true"/>
                                    </div>
                                    <@p.table id="managerTable"/>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script src="${base}/static/js/module/user/user.js"></script>
</#assign>
<#include "../commons/_container.ftl" />