<!-- ================================== -->
<!-- What is PostgreSQL? -->
<!-- ================================== -->

## 📌 What is PostgreSQL?

✅ ফ্রি এবং ওপেন সোর্স

✅ JSON এবং NoSQL সাপোর্ট – JSON, XML, এবং HStore টাইপের ডেটা সংরক্ষণ করা যায়।

✅ Security & Scalability – লার্জ স্কেলে ডাটা হ্যান্ডেল করতে পারে, এবং অ্যাডভান্সড সিকিউরিটি সাপোর্ট দেয়।

✅ ACID Compliant – Data integrity বজায় রাখে (Atomicity, Consistency, Isolation, Durability) ।

✅ Extensible – নতুন FUNCTION, টাইপ, স্টোরড Procedural যোগ করা যায়।

## 📌 PostgreSQL: ডাটাবেসের প্রধান কম্পোনেন্টস

1️⃣ Database (ডাটাবেস)
👉 এটি হলো এক বা একাধিক টেবিলের সমষ্টি যেখানে ডাটা সংরক্ষণ করা হয়। 👉 প্রতিটি PostgreSQL সার্ভারে একাধিক ডাটাবেস থাকতে পারে।

2️⃣ Table (টেবিল)
👉 এটি হলো ডাটা সংরক্ষণের জন্য নির্দিষ্ট rows (সারি) এবং columns (কলাম) সমৃদ্ধ স্ট্রাকচার। 👉 প্রতিটি column একটি নির্দিষ্ট টাইপের ডাটা ধারণ করে (যেমন: INTEGER, TEXT, BOOLEAN ইত্যাদি)।

3️⃣ Row (সারি)
👉 প্রতিটি row (সারি) একটি সম্পূর্ণ ডাটা এন্ট্রি ধারণ করে। 👉 একে record বা tuple ও বলা হয়।

4️⃣ Column (কলাম)
👉 প্রতিটি কলামে নির্দিষ্ট ধরনের তথ্য থাকে (যেমন: নাম, বয়স, ফোন নম্বর ইত্যাদি)। 👉 একে field ও বলা হয়।

5️⃣ Schema (স্কিমা)
👉 এটি হলো ডাটাবেসের কাঠামো বা স্ট্রাকচার, যেখানে বিভিন্ন টেবিল, ভিউ, ফাংশন, ইত্যাদি সংরক্ষিত থাকে। 👉 ডিফল্ট স্কিমার নাম হলো public

6️⃣ Query (কুয়েরি)
👉 এটি হলো SQL স্টেটমেন্ট যা PostgreSQL-এর সাথে যোগাযোগ করতে ব্যবহৃত হয়। 👉 যেমনঃ

`SELECT * FROM students;`

## সারসংক্ষেপ:

PostgreSQL একটি শক্তিশালী, ফিচার-সমৃদ্ধ এবং ওপেন সোর্স রিলেশনাল ডাটাবেস সিস্টেম, যা ছোট থেকে বড় যেকোনো ধরনের অ্যাপ্লিকেশনের জন্য উপযুক্ত। এর স্কেলেবিলিটি, নিরাপত্তা, ACID কমপ্লায়েন্স, এবং JSON/NoSQL সাপোর্টের মতো বৈশিষ্ট্যগুলো একে অন্যান্য ডাটাবেস থেকে আলাদা করেছে। PostgreSQL শেখা এবং ব্যবহার করা সহজ, কারণ এর বিশাল কমিউনিটি ও ডকুমেন্টেশন সবসময় ডেভেলপারদের পাশে থাকে।

<!-- ================================== -->
<!-- Explain the GROUP BY clause and its role in aggregation operations. -->
<!-- ================================== -->

# 🔹Explain the GROUP BY clause and its role in aggregation operations.

Group By হলো এমন একটা পদ্ধতি, যার মাধ্যমে আমরা ডেটাগুলোকে একটা নির্দিষ্ট শর্ত অনুযায়ী ভাগ করতে পারি। সহজভাবে বললে, এটা একই ধরনের তথ্যগুলোকে এক জায়গায় জড়ো করে।

ধরেন , আপনার কাছে অনেক ছাত্রছাত্রীর তথ্য আছে। এখন আপনি চান কোন বিভাগে কতজন আছে সেটা জানতে। তখন Group By দিয়ে ব্যবহার করে বিভাগের কত জন ছাত্রছাত্রী আছে বের করতে পারি।

## Group By ব্যবহার (Query Syntax)

Query Syntax-এ Group By ব্যবহার করা হয় group কিওয়ার্ডের মাধ্যমে। এটি একটি গ্রুপড সংগ্রহ তৈরি করে, যা গ্রুপের কন্ডিশন অনুযায়ী সাজানো হয়।

#### উদাহরণ:

```
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;
```

### Aggregation with Group By

Group By এর সাথে Aggregation মেথডগুলো যেমন Count, Sum, Average, Min, Max ব্যবহার করে আপনি প্রতিটি গ্রুপের উপর গণনা বা পরিসংখ্যানিক অপারেশন করতে পারেন।

## সারাংশ

Group By এবং Aggregation Methods ব্যবহারের মাধ্যমে আপনি ডেটাকে একটি নির্দিষ্ট কন্ডিশনের ভিত্তিতে গ্রুপ করতে এবং পরবর্তীতে প্রতিটি গ্রুপের উপর বিভিন্ন গণনা অপারেশন (যেমন Count, Sum, Average, Min, Max) প্রয়োগ করতে পারেন।

<!-- ================================== -->
<!-- Explain the Primary Key and Foreign Key concepts in PostgreSQL. -->
<!-- ================================== -->

# 🔹Explain the Primary Key and Foreign Key concepts in PostgreSQL.

## Primary Key

Primary Key হলো এমন একটা Key যেটা দিয়ে আমরা টেবিলের প্রতিটা তথ্যকে আলাদা করে চিনতে পারি। মানে, কোনো তথ্য একবারই থাকবে, তার কপি বা ডুপ্লিকেট থাকবে না।

#### প্রতিটি টেবিলে কমপক্ষে একটা primary key থাকতে পারে ।

#### উদাহরণ:

```
id SERIAL PRIMARY KEY
```

## Foreign Key

Foreign Key হলো: অন্য টেবিলের (Primary Key) এর সাথে relation তৈরি করে।
এটা দিয়ে দুইটা টেবিলের মধ্যে যোগাযোগ (relation) থাকে।

সহজভাবে বললে, Foreign Key এক টেবিলের ডাটা অন্য টেবিলের ডাটার সাথে জোড়া দেয়।

#### উদাহরণ:

```
CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    userName VARCHAR(255) NOT NULL
);

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
);
```

<!-- ================================== -->
<!-- What is the difference between the VARCHAR and CHAR data types?-->
<!-- ================================== -->

# What is the difference between the VARCHAR and CHAR data types?

### CHAR:

- ঠিক-ঠাক একটি নির্দিষ্ট জায়গা নেয়।
- যদি কম অক্ষর লেখো, তাহলে বাকিটা ফাঁকা থাকে।
- দ্রুত কাজ করে কারণ সাইজ ফিক্সড।

### VARCHAR:

- যত অক্ষর লেখো, ঠিক তত জায়গা নেয়।
- ফাঁকা জায়গা কম থাকে।
- একটু ধীরে কাজ করে কারণ সাইজ পরিবর্তনশীল।

<!-- ================================== -->
<!-- What is the significance of the JOIN operation, and how does it work in PostgreSQL? -->
<!-- ================================== -->

# What is the significance of the JOIN operation, and how does it work in PostgreSQL?

## JOIN অপারেশন কী ও কেন ব্যবহার হয়?

JOIN মানে হলো – দুইটা টেবিলকে একসাথে মিলিয়ে ডেটা দেখানো।
ধরো, তোমার এক টেবিলে ছাত্রদের নাম আর আরেক টেবিলে তাদের বিভাগের নাম আছে। এখন তুমি চাও – “ছাত্রের নামের সাথে তার বিভাগের নামও একসাথে দেখতে।” তখনই আমরা JOIN ব্যবহার করি।

## PostgreSQL-এ JOIN কিভাবে কাজ করে?

PostgreSQL-এ JOIN অপারেশন দিয়ে আমরা বলি, “এই টেবিলের এই কলাম আর ঐ টেবিলের ঐ কলাম যেগুলো মিলে যায়, সেগুলো একসাথে দেখাও।

#### উদাহরণ:

```
SELECT students.name, departments.dept_name
FROM students
JOIN departments
ON students.dept_id = departments.id;
```

## JOIN কত ধরনের?

#### JOIN কয়েকভাবে করা যায়, যেমন:

- INNER JOIN – যেগুলোর মধ্যে মিল আছে শুধু সেগুলো দেখায়।
- LEFT JOIN – বাম টেবিলের সব ডেটা দেখায়, মিল না থাকলেও।
- RIGHT JOIN – ডান টেবিলের সব ডেটা দেখায়, মিল না থাকলেও।
- FULL JOIN – দুই টেবিলের সব ডেটা দেখায়, মিল থাকুক বা না থাকুক।
