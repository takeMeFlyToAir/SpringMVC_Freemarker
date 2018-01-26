package com.ffcs.oss.config;

import org.springframework.web.servlet.view.freemarker.FreeMarkerView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

public class ExtFreeMarkerView extends FreeMarkerView {
    private static final String CONTEXT_PATH = "base";
    public ExtFreeMarkerView() {

    }

    @Override
    protected void exposeHelpers(Map<String, Object> model, HttpServletRequest request) throws Exception {
        String base = request.getContextPath();
        model.put(CONTEXT_PATH, base);
        super.exposeHelpers(model, request);
    }
}