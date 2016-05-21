using System;
using System.Globalization;

class HolidaysBetweenTwoDates
{
    static void Main()
    {

        DateTime startDate = DateTime.ParseExact(Console.ReadLine(),
            "d.M.yyyy", CultureInfo.InvariantCulture);
        DateTime endDate = DateTime.ParseExact(Console.ReadLine(),
            "d.M.yyyy", CultureInfo.InvariantCulture);
        int holidaysCount = 0;
        TimeSpan diff = endDate - startDate;
        int days = diff.Days;
        for (int date = 0; date <= days; date++)
            if (startDate.AddDays(date).DayOfWeek == DayOfWeek.Saturday ||
                startDate.AddDays(date).DayOfWeek == DayOfWeek.Sunday) holidaysCount++;
        Console.WriteLine(holidaysCount);
       
    }
}
