ARG NODE_VERSION=18.14
#----------------------------------------------------------------------------
# Base Image
#----------------------------------------------------------------------------
FROM node:${NODE_VERSION}-alpine as base

WORKDIR /usr/src/app

#----------------------------------------------------------------------------
# DEPENDENCIES
#---------------------------------------------------------------------------
FROM base as dependencies

COPY package.json package-lock.json prisma ./

ENV DEBUG="*"

# Build production node_modules and copy them to temp dir
RUN npm ci --production
RUN mv ./node_modules /tmp/node_modules

RUN npm ci
RUN npx prisma generate

CMD [ "node", "index.js" ]