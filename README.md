# Riot.js vs React.js for a simple comment box
Code based on the React.js tutorial removing the server communication. 
It´s just a form that add comments implemented in React.js and Riot.js, so I can 
see the differences between both .

The React.js code uses state and methods to interact between components.
The code is coupled, but probably using another pattern could improve this. 

The comment box Riot.js version uses a simple observable pattern to make the interaction between 
components decoupled, clean and easy.

Clone, install and run
```
npm install
npm start
```

then go to localhost:3001

You can compare both comment box versions: 
/public/scripts/react-comments.js : react.js code
/public/scripts/riot-comments.tag : riot.js code
