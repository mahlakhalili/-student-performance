-- تعداد کل دانش‌آموزها
SELECT COUNT(*) AS total_students FROM student_performance_clean;

-- تعداد به تفکیک جنسیت
SELECT gender, COUNT(*) AS count
FROM student_performance_clean
GROUP BY gender;

--تعداد بر اساس گروه
SELECT race_ethnicity, COUNT(*) AS count
FROM student_performance_clean
GROUP BY race_ethnicity;

-- میانگین نمرات ریاضی، ریدینگ و رایتینگ کل دانش‌آموزها
SELECT 
  AVG(math_score) AS avg_math,
  AVG(reading_score) AS avg_reading,
  AVG(writing_score) AS avg_writing
FROM student_performance_clean;

--تأثیر دوره‌ی آمادگی آزمون (test preparation course) بر میانگین نمرات
SELECT 
  test_preparation_course,
  AVG(math_score) AS avg_math,
  AVG(reading_score) AS avg_reading,
  AVG(writing_score) AS avg_writing
FROM student_performance_clean
GROUP BY test_preparation_course;

--میانگین نمره‌ها به تفکیک جنسیت
SELECT 
  gender,
  AVG(math_score) AS avg_math,
  AVG(reading_score) AS avg_reading,
  AVG(writing_score) AS avg_writing
FROM student_performance_clean
GROUP BY gender;

--میانگین نمره‌ها به تفکیک سطح تحصیلات والدین
SELECT 
  parental_level_of_education,
  AVG(math_score) AS avg_math,
  AVG(reading_score) AS avg_reading,
  AVG(writing_score) AS avg_writing
FROM student_performance_clean
GROUP BY parental_level_of_education;