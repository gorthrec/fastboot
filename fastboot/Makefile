MODULE := fastboot
SRC_FILES := protocol.c engine.c bootimg.c fastboot.c
SRC_FILES += usb_linux.c util_linux.c
SRC_FILES += zipfile/zipfile.c zipfile/centraldir.c

OBJ_FILES := $(patsubst %.c, %.o, $(SRC_FILES))

CFLAGS := -I.
LDFLAGS := -L../zlib -static

%.o: %.c
	@$(CC) $(CFLAGS) -c -o $@ $<

.PHONY: all
all: $(OBJ_FILES)
	@$(CC) $(LDFLAGS) -o $(MODULE) $^ -lz

.PHONY: clean
clean:
	@find . -name "*.o" -exec $(RM) {} \;
	@$(RM) $(MODULE)
