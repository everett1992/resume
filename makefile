#TODO: I'd like to add multiple versions of my resume as different build targets.
# print: black and white, fully qualified urls
# digital: color? hyperlink'ed urls
BUILD_DIR=build

all: resume.pdf

resume.pdf: $(BUILD_DIR) resume.tex
	@echo "Compiling resume.tex with rubber"
	@rubber --pdf --into $(BUILD_DIR) resume.tex
	@cp $(BUILD_DIR)/resume.pdf .

$(BUILD_DIR):
	@echo "Create build directory $(BUILD_DIR)"
	@mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)
