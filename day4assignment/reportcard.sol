pragma solidity >=0.4.17 <0.7.0;
contract ReportCard{
    string public name;
    uint public rollno;
    uint public batch;
    string public status;
    uint  sub1;
    uint  sub2;
    uint  sub3;
    uint  sub4;
    function ReportCardSubmission(string newName,uint newRollno,uint newBatch,uint mark1,uint mark2,uint mark3,uint mark4)public{
        name = newName;
        rollno = newRollno;
        batch = newBatch;
       
        //Give marks out off 100 for each subjects
        sub1 = mark1;
        sub2 = mark2;
        sub3 = mark3;
        sub4 = mark4;
       
        //Pass mark is 35
       
        if(sub1 < 35){
            status = "Fail";
        }  else if(sub2 < 35) {
            status = "Fail";
        }  else if(sub3 < 35) {
            status = "Fail";
        }  else if(sub4 < 35) {
            status = "Fail";
        }  else{
            status = "Pass";
        }
    }
   
    function getDetails()public view returns(string,uint,uint,string){
        return(name,rollno,batch,status);
    }
}
