import logging
from telegram import Update
from telegram.ext import ApplicationBuilder, CommandHandler, ContextTypes
import os

TOKEN = os.getenv("TELEGRAM_TOKEN")

logging.basicConfig(
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    level=logging.INFO
)

async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text("Salve, piloto! Bot online e pronto pra ação.")

async def status_cansado(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text("Pega leve, campeão. Que tal uma pausa estratégica com café e respiro?")

async def status_animado(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text("Então mete marcha! Hora de aproveitar os picos de corrida!")

async def onde_hoje(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text("Analisando clima e movimento... Hoje tá melhor ir pra Ubatuba!")

def main():
    application = ApplicationBuilder().token(TOKEN).build()

    application.add_handler(CommandHandler("start", start))
    application.add_handler(CommandHandler("status_cansado", status_cansado))
    application.add_handler(CommandHandler("status_animado", status_animado))
    application.add_handler(CommandHandler("onde_hoje", onde_hoje))

    application.run_polling()

if __name__ == '__main__':
    main()
    
