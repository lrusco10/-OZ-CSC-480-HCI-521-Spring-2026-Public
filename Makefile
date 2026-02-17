.PHONY: dev dev-frontend dev-backend setup

dev:
	make dev-frontend & make dev-backend

dev-frontend:
	cd ./frontend && npm run dev

dev-backend:
	cd ./backend/finish && ./mvnw liberty:dev

setup: setup-frontend setup-backend

setup-frontend:
	cd ./frontend && npm install

setup-backend:
	cd ./backend/finish && ./mvnw clean install