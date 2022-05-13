package com.t2010a.t2010a_again.util;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class DateTimeHelper {
    private static  final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    public static LocalDateTime convertStringToLocalDateTime(String date){
        return LocalDate.parse(date,formatter).atStartOfDay();
    }
    public static String convertLocalDateTimeToString (LocalDateTime dateTime){return dateTime.format(formatter);}
}
