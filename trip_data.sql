{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf400
{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red115\green138\blue4;\red2\green32\blue41;\red202\green202\blue202;
\red212\green212\blue212;}
{\*\expandedcolortbl;;\cssrgb\c52157\c60000\c0;\cssrgb\c0\c16863\c21176;\cssrgb\c83137\c83137\c83137;
\cssrgb\c86275\c86275\c86275;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl360\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 SELECT\cf4 \strokec4  duration\cf5 \strokec5 ,\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 SUM\cf5 \strokec5 (\cf4 \strokec4 duration\cf5 \strokec5 )\cf4 \strokec4  \cf2 \strokec2 OVER\cf4 \strokec4  \cf5 \strokec5 (\cf2 \strokec2 ORDER\cf4 \strokec4  \cf2 \strokec2 BY\cf4 \strokec4  start_date\cf5 \strokec5 )\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 AS\cf4 \strokec4  running_total\cb1 \
\cf2 \cb3 \strokec2 FROM\cf4 \strokec4  trip_data\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
}