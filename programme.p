
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
   
   if(item[i]<=time_quantum && item[i]>0) 
    { 
      upadate_t+=item[i]; 
      item[i]=0; 
      ident=1;
    } 
    else if(item[i]>0) 
    {                 
      item[i]-=time_quantum; 
      upadate_t+=time_quantum; 
    } 
    if(item[i]==0 && ident==1) 
    { 
      r_p--; 
      printf("For process :%d\t|\t%d\t|\t%d\n",i+1,x,y); 
      wait_time+=y; 
      turnaround_time+=x; 
      ident=0; 
    } 
   if(i==process-1) 
      i=0;
    else if(arrival_t[i+1]<=upadate_t) 
      i++;
	else
	  i=0;
 }
  printf("\nAverage Waiting Time= %f\n",wait_time*1.0/process); 
  printf("Average  Turnaround Time = %f",turnaround_time*1.0/process); 
  
  return 0; 
}
