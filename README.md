# Mtcars-Flask-Api

This is a flask API that returns prediction for mpg (Miles/(US) gallon) using a linear model. The model is based on following predictors:

- cyl: Number of cylinders
- disp: Displacement (cu.in.)
- hp: Gross horsepower
- drat: Rear axle ratio
- wt: Weight (1000 lbs)
- qsec: 1/4 mile time

**1. Open a terminal, change directory to the "docker" folder, and run:**

`docker-compose up`

If it has created the localhost server correctly, you will see the following lines:

Recreating docker_flask_1 ... done \\
Attaching to docker_flask_1 \\
flask_1  |  * Serving Flask app "server" (lazy loading) \\
flask_1  |  * Environment: production \\
flask_1  |    WARNING: Do not use the development server in a production environment. \\
flask_1  |    Use a production WSGI server instead. \\
flask_1  |  * Debug mode: on \\
flask_1  |  * Running on http://0.0.0.0:5000/ (Press CTRL+C to quit) \\
flask_1  |  * Restarting with stat \\
flask_1  |  * Debugger is active! \\
flask_1  |  * Debugger PIN: [Debugger PIN] \\

**2. Open a new terminal and run the following command to confirm that the server is up**

`curl http://localhost:5000/`

If the server is running, you will get the following output: 

server is up - nice job!  

**3. Then use the following command to get prediction. Change the values of predictors (cyl, disp, hp, drat, wt and qsec) to get the corresponding prediction for mpg.** 

`curl -H "Content-Type: application/json" -X POST -d '{"cyl":"4","disp":"108","hp":"93","drat":"3.85","wt":"2.32","qsec":"18.61"}' "http://localhost:5000/predict_price"`

If it is successfully run, You will get the following output: 

{\\
"predict cost": [22.799931734886403]\n
}\\

**4. Both of the curl commands can be found in the file `curl_test.sh`.** 

**5. To stop running the API, type `ctrl-C`.** 

**6. Also, check to see if there is any docker container running using  `docker container ls` and stop them using  `docker container kill <container-name>`.** 
