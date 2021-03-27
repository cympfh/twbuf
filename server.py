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
        f.write(post.text)
        f.write("\n")
        logger.info("Append %s", post)
        return {"status": "OK"}
