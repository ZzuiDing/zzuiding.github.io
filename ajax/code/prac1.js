const express = require('express');

const app = express();

app.get('/ie',(Request,response)=>{
    response.send('Hello world');
});

app.listen(5500,()=>{
    console.log('Listening on port');
})

app.all('/ie',(Request,response)=>{
    response.send('Hello world');
});