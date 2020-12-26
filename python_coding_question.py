input_list = [] 

def subtract_months(input_list):
    output_list = []
    input_list = list(tuple(map(int,input().split())) for r in range(int(input('Enter no of tuple : ')))) 

 
    for i in range(len(input_list)):
        for j in range(3):
            if j == 0:
                year = int(input_list[i][j])
            
            elif j == 1:
                months = int(input_list[i][j])
            
            elif j==2:
                months_to_subtract = int(input_list[i][j])
                
                
                print(months)
        if(months_to_subtract>12):
            print("starting..if....")
            temp = months
            yr = months_to_subtract/12
            year = int(year - yr)
            months = months_to_subtract%12
            months = 12 - months
            months = int(months+temp)
            print(year,months)
            print('ending....if..')
            
                    
                
               
        else:
            
            if(months < months_to_subtract):
                print(" month is less than month_subtract")
                temp = months
                year = int(year - 1)
                months = 12 - months_to_subtract
                months = int(months+temp)
                print(months)
                
            elif(months > months_to_subtract):
                print(" month is greater than months_to_subtract")
                months = int(months - months_to_subtract)
                
            else:
                print("equal")
                months = months - months_to_subtract
                months = 12 - months
                year = year - 1
            
                
                
            
        tuples = (year, months)
        output_list.append(tuples)
    return output_list
                
    
