import datetime
import logging

from fastapi import FastAPI
from pydantic import BaseModel

logger = logging.getLogger("twbuf.server")
app = FastAPI()


class Post(BaseModel):
    text: str


@app.post("/twbuf")
def append_twbuf(post: Post):
    with open("buf.txt", "ta") as f:
        text = post.text.replace('\n', ' ')
        text = f"{text} [{datetime.datetime.now()}]"
        f.write(text)
        f.write("\n")
        logger.info("Append %s", post)
        return {"status": "OK"}
