PORT := 8092

serve:
	uvicorn server:app --port $(PORT)

unleash:
	bash ./unleash.sh buf.txt
