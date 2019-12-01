package com.example.java;

import org.junit.Test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class JavaTest {

    @Test
    public void testDateFormat() throws ParseException {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
        Date date = format.parse("2020-02-02T02:03");
        System.out.println(date);
    }

    @Test
    public void testUUID() {
        UUID uuid = UUID.randomUUID();
        System.out.println(uuid);
    }
}
