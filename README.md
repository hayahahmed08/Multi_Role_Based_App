# multi_role_based_app

A new Flutter project.
The App includes the following functionalities 

# Navigation Flow: 
The app starts with the SplashScreen, checks the login status, and then navigates either to the LoginScreen or HomeScreen based on whether the user is already logged in.
# State Management:
The app uses StatefulWidget to handle dynamic data and uses SharedPreferences for persistent storage of user data like email, password, age, and login status.
# User Interaction:
When a user logs in, their details are stored, and they are navigated to the HomeScreen. If they log out, their data is cleared, and they are returned to the LoginScreen.
