from telegram import Update
from telegram.ext import ApplicationBuilder, CommandHandler, ContextTypes

async def start(update: Update, context: ContextTypes.DEFAULT_TYPE):
    await update.message.reply_text("Bot está vivo, meu chapa!")

app = ApplicationBuilder().token(8254941787:AAFvYg8HK69leAkv5RmR_WockW2H1Ee8mWw).build()
app.add_handler(CommandHandler("start", start))
app.run_polling()
