FROM node:slim
RUN apt update && apt install git -y && apt clean
RUN adduser ww && su ww
WORKDIR /app
COPY dist/index.js ./index.js
CMD node index.js