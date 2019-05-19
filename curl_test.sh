#!/bin/bash

curl http://localhost:5000/

curl -H "Content-Type: application/json" -X POST -d '{"cyl":"4","disp":"108","hp":"93","drat":"3.85","wt":"2.32","qsec":"18.61"}' "http://localhost:5000/predict_price"
