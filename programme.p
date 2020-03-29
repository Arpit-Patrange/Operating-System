
#include<stdio.h>
 
int main() 
{ 
 
  int x,y,i,process,upadate_t,r_p,ident=0,time_quantum; 
  int wait_time=0,turnaround_time=0,arrival_t[20],burst_t[20],item[20]; 
  printf("Enter Total Process:\t "); 
  scanf("%d",&process); 
  r_p=process; 
  for(i=0;i<process;i++)  
  { 
    printf("For Process Number %d :-\n",i+1);
    printf("Enter Arrival Time :",i+1);
	scanf("%d",&arrival_t[i]);
	printf("Enter Burst Time :",i+1); 
    scanf("%d",&burst_t[i]); 
    item[i]=burst_t[i]; 
    
  } 
    printf("Enter Time Quantum:\t"); 
    scanf("%d",&time_quantum);
    printf("\n\nProcess\t|Turnaround Time|Waiting Time\n\n");  
   for(upadate_t=0,i=0;r_p!=0;)
  {
  	
   x= upadate_t-arrival_t[i];
   y=upadate_t-arrival_t[i]-burst_t[i];
