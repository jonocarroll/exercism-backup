def leap_year(year):
    ans = year % 4 == 0 if (not year % 100== 0 or year % 400 == 0) else False
    return ans

