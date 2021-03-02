library(ggplot2)

plot(as.factor(Recursos_Humanos$Lugar), 
     col =c("royalblue", "seagreen", "purple", "grey"), density=100)



plot( Recursos_Humanos[Recursos_Humanos$Puesto == "IT",]
      $Edad, pch=18, col= ("seagreen"),
      main = "Edad IT ")


EstiloCamisa <- ggplot(Recurso2, aes(x =Estilo)) + geom_bar(fill="red4") +coord_flip()
EstiloCamisa + theme_classic()


EstiloColor <- ggplot(Recurso2, aes(x= Estilo))+ geom_bar(aes(fill=Color), position = "dodge")
EstiloColor +scale_fill_manual(values =c
                               ("gray","blue","green3","red","yellow")) +theme_minimal()


Cursos <- table(Recurso2$`Cursos Terminados`, Recurso2$Nivel)
barplot(Cursos, main = "Nivel Cursos Terminados",
        xlab = "Cursos Terminados", ylab = "Nivel",
        col = c("gray","blue","green3","red","yellow"), density = 50 )
legend("topleft",
       legend = c("1","2","3","4","5"), 
       pch = c(21,25,23,20 ), 
       col = c("gray","blue","green3","red","yellow"))