<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="nav-close"><i class="fa fa-times-circle"></i>
    </div>
    <div class="sidebar-collapse">
        <ul class="nav" id="side-menu">
            <li class="nav-header">
                <div class="dropdown profile-element">
                    <span><img alt="image" class="img-circle" src="${base}/static/img/girl.gif"
                               width="64px" height="64px"/></span>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="clear">
                       <span class="block m-t-xs"><strong class="font-bold">zzr</strong></span>
                        <span class="text-muted text-xs block">admin<b class="caret"></b></span>
                        </span>
                    </a>
                    <ul class="dropdown-menu animated fadeInRight m-t-xs">
                        <li><a class="J_menuItem" href="${base}/mgr/user_info">个人资料</a></li>
                        <li><a class="J_menuItem" href="${base}/mgr/user_chpwd">修改密码</a></li>
                        <li class="divider"></li>
                        <li><a href="${base}/logout">安全退出</a>
                        </li>
                    </ul>
                </div>
                <div class="logo-element">GS
                </div>
            </li>

            <#list titles as title>
                <#if (!title.children??  || title.children?size=0)>
                    <li>
                        <a class="J_menuItem" href="${base}${title.url}" name="tabMenuItem">
                            <i class="fa ${title.icon}"></i>
                            <span class="nav-label">${title.name}</span>
                        </a>
                    </li>
                <#else >
                    <li>
                        <a href="#">
                            <i class="fa ${title.icon}"></i>
                            <span class="nav-label">${title.name}</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <#list title.children as subTitle>
                                <#if (!subTitle.children??  || subTitle.children?size=0)>
                                    <li>
                                        <a class="J_menuItem" href="${base}${subTitle.url}" name="tabMenuItem">${subTitle.name}</a>
                                    </li>
                                <#else>
                                    <li>
                                        <a href="#">${subTitle.name} <span class="fa arrow"></span></a>
                                        <ul class="nav nav-third-level">
                                            <#list subTitle.children as thirdTitle>
                                                <li>
                                                    <a class="J_menuItem" href="${base}${thirdTitle.url}" name="tabMenuItem">${thirdTitle.name}</a>
                                                </li>
                                            </#list>
                                        </ul>
                                    </li>
                                </#if>
                            </#list>
                        </ul>
                    </li>
                </#if>
            </#list>
        </ul>
    </div>
</nav>