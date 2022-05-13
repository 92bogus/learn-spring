package com.bogus.learningspring;

import org.junit.Test;

public class TestConfigurableDispatcherServlet {
    @Test
    public void test() {
        ConfigurableDispatcherServlet servlet = new ConfigurableDispatcherServlet();
        servlet.setRelativeLocations(getClass(), "test-servlet-context.xml");
        servlet.setClasses(HelloSpring.class);

        servlet.init(new MockServletConfig("spring"));
    }
}
