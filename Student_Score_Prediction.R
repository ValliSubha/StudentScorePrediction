student_scores = read.csv(file = "student_scores - student_scores.csv")

str(student_scores) 

summary(student_scores) 

plot (student_scores$Hours, student_scores$Scores,type="p",
     main = "Scatter plot of Student Scores and Study Hours", 
     col= "orange", lwd=5, pch=3, 
     xlim= c(0,10), ylim=c(0,100), 
     xlab="Study Hours", ylab= "Student's Score") 

#regression line: regression
regression = lm (Scores ~ Hours, data = student_scores) 
print(regression) # explain the values 


abline(lm (Scores ~ Hours, data = student_scores), col = "red")

hours = data.frame("Hours" = 9.25) 
score_pred=predict(regression,hours) #score prediction
sprintf("The Score predicted for a student who studied for 9.25 hours is : %f ",score_pred)



