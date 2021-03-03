from flask import Flask, render_template
import random
app = Flask(__name__)

# list of cat images
images = [
  "http://hivemind.com.ua/wp-content/uploads/2011/08/2745_9aa6.gif",
  "http://hivemind.com.ua/wp-content/uploads/2011/08/5803_840e.gif",
  "http://hivemind.com.ua/wp-content/uploads/2011/08/4583_5f22.gif"
]

@app.route('/')
def index():
  url = random.choice(images)
  return render_template('index.html', url=url)

if __name__ == "__main__":
  app.run(host='0.0.0.0')

