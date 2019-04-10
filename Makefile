.PHONY: clean All

All:
	@echo "----------Building project:[ smart-paging - Debug ]----------"
	@cd "smart-paging" && "$(MAKE)" -f  "smart-paging.mk"
clean:
	@echo "----------Cleaning project:[ smart-paging - Debug ]----------"
	@cd "smart-paging" && "$(MAKE)" -f  "smart-paging.mk" clean
