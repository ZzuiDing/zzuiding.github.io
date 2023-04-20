const express = require('express');

const app = express();

app.get('/',(Request,response)=>{
    response.send('Hello world');
});

app.listen(8000,()=>{
    console.log('Listening on port');
})