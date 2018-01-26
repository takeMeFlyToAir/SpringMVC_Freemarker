package com.ffcs.oss.domain;

import java.io.Serializable;
import java.util.List;

/**
 * Created by sjgtw-zzr on 2017/12/17.
 */
public class MenuVO implements Serializable{

    private String name;

    private String url;

    private String icon;

    private List<MenuVO> children;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public List<MenuVO> getChildren() {
        return children;
    }

    public void setChildren(List<MenuVO> children) {
        this.children = children;
    }
}
