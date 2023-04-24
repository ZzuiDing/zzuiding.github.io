var TestDataSource;
TestDataSource= [
    {"id":1,"isbn":1,"name":"math","type":"book","author":"thi","description":"This is a book","price":"35.14"},
    {"id":2,"isbn":2,"name":"math2","type":"book","author":"thi","description":"This is a book","price":"84.18"}
];

function WriteList(data){
    for(var i=0;i<data.length;i++){
        console.log(data[i]);
    } 
}

