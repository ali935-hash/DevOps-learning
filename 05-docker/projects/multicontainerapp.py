from flask import Flask

import redis

app = Flask(__name__)

r = redis.Redis(
    host="redis",
    port=6379,
    decode_responses=True
)

@app.route('/')
def welcome():
    return 'Welcome to the BEST online counter!'

@app.route('/count')
def counter():
    visit_count = r.incr("visit_count")
    return f'This is a counter for how many times someone has visited this site: {visit_count}'     

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5005)


