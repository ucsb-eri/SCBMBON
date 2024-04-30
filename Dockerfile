# Use Jekyll image to build the website
FROM jekyll/jekyll:latest as builder

# Set working directory
RUN mkdir /app
WORKDIR /app

# Copy files as the jekyll user
COPY --chown=jekyll:jekyll Gemfile Gemfile.lock ./
RUN bundle config set --local path 'vendor/bundle' && bundle install --jobs 4 --verbose

# Copy your website source code to the container as jekyll user
COPY --chown=jekyll:jekyll . .

# Install dependencies and build the website
USER jekyll
RUN jekyll build  --verbose --profile

FROM nginx:alpine
COPY --from=builder /app/_site /usr/share/nginx/html
EXPOSE 80
