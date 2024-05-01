# Use Jekyll image to build the website
FROM jekyll/jekyll:latest as builder

# Set working directory
RUN mkdir /app
WORKDIR /app

# Change ownership to jekyll
RUN chown -R jekyll:jekyll /app

# Copy and set permissions for Gemfiles
COPY --chown=jekyll:jekyll Gemfile Gemfile.lock ./

# Bundle install as jekyll user
USER jekyll
RUN bundle config set --local path 'vendor/bundle' && bundle install --jobs 4 --verbose

# Copy your website source code to the container as jekyll user
COPY --chown=jekyll:jekyll . .

# Run Jekyll build
RUN jekyll build --verbose --profile

# Switch back to root to setup nginx
USER root

# Use Nginx image to serve the website
FROM nginx:alpine
COPY --from=builder /app/_site /usr/share/nginx/html
EXPOSE 80
