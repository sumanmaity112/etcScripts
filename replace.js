var fs=require('fs');
var replace = function (fileName) {
  fs.readFile(fileName,'utf8',function(err,data){
      if(err){
          fs.appendFile("./log.txt","Failed for"+fileName+"\n error is "+err.toString()+"\n-------------------------\n");
      }
      else{
          console.log(fileName," ----------");
          //data=data.replace(/\s[^=][^!]={2}[^=]\s/g," === ");
          data = data.replace(/\s==\s/g," === ");
          //data=data.replace(/={4}/gi,"===");
          data=data.replace(/!=\s/g,"!== ");
          //data=data.replace(/!={3}/gi,"!== ");

          fs.writeFile(fileName,data,function(){});
          //fs.writeFile("./try.js",data,function(){});
      }
  })
};
replace(process.argv[2]);