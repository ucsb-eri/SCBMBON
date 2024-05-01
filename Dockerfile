# Use Jekyll image to build the website
FROM jekyll/jekyll:latest as builder

# Set working directory
RUN mkdir /app && chown -R jekyll:jekyll /app
WORKDIR /app

# Optimizing bundle install by caching gems
COPY Gemfile Gemfile.lock ./
RUN chown jekyll:jekyll Gemfile Gemfile.lock
RUN bundle config set --local path 'vendor/bundle' && bundle install --jobs 4 --verbose

# Copy your website source code to the container
COPY . .

# Install dependencies and build the website
RUN jekyll build  --verbose --profile

# Use Nginx image to serve the website
FROM nginx:alpine
COPY --from=builder /app/_site /usr/share/nginx/html
EXPOSE 80
