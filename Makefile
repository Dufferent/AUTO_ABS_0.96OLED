PROJECT ?= OLED_ABSD
OBJ ?= oled_absd.o

$(PROJECT) : $(OBJ)
	g++ -o $@ $^ -lopencv_world

%.o : %.c
	g++ -o $@ -c $< -lopencv_world

clean:
	rm  -rf $(PROJECT) ./*.o ./CV_OUT/*