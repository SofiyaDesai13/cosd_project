/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.demo.ticketingsystem;

import jakarta.servlet.http.HttpServletRequest;
import java.lang.reflect.Field;

/**
 *
 * @author sofiyadesai
 */

public class Utility {
    public static Object extractObjectFromRequest(Class c,
        HttpServletRequest request) {
        Object o = null;
        try {
            o = c.newInstance();
            Field[] flds = c.getDeclaredFields();
            for (Field f : flds) {
                String param = request.getParameter(f.getName());
                if ((param != null) && (param.length() > 0)) {
                    f.setAccessible(true);
                    Object par = null;
                    if (f.getType().getName().equals("java.lang.String")) {
                        par = param;
                    } else {
                    System.err.println("Unknown type: " + f.getType().getName());
                    }
                    if (par != null) {
                        f.set(o, par);
                    }
                }
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return o;
    }  
}
