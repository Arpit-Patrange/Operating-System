#include<stdio.h> 
 
int main() 
{ 
 
  int i,n,upadate_t,r_p,flag=0,time_quantum; 
  int wait_time=0,turnaround_time=0,arrival_t[10],burst_t[10],item[10]; 
  printf("Enter Total Process:\t "); 
  scanf("%d",&n); 
  r_p=n; 
