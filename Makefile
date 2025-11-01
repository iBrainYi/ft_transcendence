# **************************************************************************** #
#                                   COLORS                                     #
# **************************************************************************** #
GREEN=\033[0;32m
YELLOW=\033[1;33m
RED=\033[0;31m
NC=\033[0m

# **************************************************************************** #
#                                   COMMANDS                                   #
# **************************************************************************** #
DOCKER_COMPOSE = docker compose
PROJECT_NAME = ft_transcendence

# **************************************************************************** #
#                                   TARGETS                                    #
# **************************************************************************** #

all: up

up:
	@echo "$(YELLOW)🚀 Lancement du projet $(PROJECT_NAME)...$(NC)"
	@$(DOCKER_COMPOSE) up --build

up-d:
	@echo "$(YELLOW)🚀 Lancement du projet $(PROJECT_NAME) en arrière-plan...$(NC)"
	@$(DOCKER_COMPOSE) up -d --build

down:
	@echo "$(RED)🧱 Arrêt et suppression des conteneurs...$(NC)"
	@$(DOCKER_COMPOSE) down

logs:
	@echo "$(YELLOW)📜 Affichage des logs...$(NC)"
	@$(DOCKER_COMPOSE) logs -f

restart:
	@echo "$(YELLOW)🔄 Redémarrage complet du projet...$(NC)"
	@$(DOCKER_COMPOSE) down
	@$(DOCKER_COMPOSE) up --build

clean:
	@echo "$(RED)🧹 Suppression des conteneurs, volumes et réseaux inutilisés...$(NC)"
	@docker system prune -af

ps:
	@echo "$(YELLOW)📦 Conteneurs actifs :$(NC)"
	@docker ps

# **************************************************************************** #
#                                   HELP                                       #
# **************************************************************************** #
help:
	@echo "$(GREEN)Commandes disponibles :$(NC)"
	@echo "  make up        : Lance le projet avec affichage des logs"
	@echo "  make up-d      : Lance le projet en arrière-plan"
	@echo "  make down      : Stoppe et supprime les conteneurs"
	@echo "  make restart   : Rebuild et relance le projet"
	@echo "  make logs      : Affiche les logs en temps réel"
	@echo "  make ps        : Liste les conteneurs actifs"
	@echo "  make clean     : Supprime tout ce qui est inutilisé (⚠️ images, volumes...)"

