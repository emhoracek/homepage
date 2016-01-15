# A Personal Website with Fn and Offset

This is a skeleton for a personal website with a blog. What's neat about this is
that your can write your blogposts in WordPress's nice interface, but your
posts are displayed inline within your own website design. No need to try to
make WordPress feel like your website, or your website feel like WordPress. It's
seamless! This program is very easy to extend and expand, too. Use it to experiment
with creating web apps in Haskell!

You can see can this in action at [daydrea.me](daydrea.me). Feel free to use this to make your own website!

If you have any trouble following the directions below, let me know so I can
improve them!!

# Setup for development

You'll need [Stack](http://docs.haskellstack.org/en/stable/README.html) to get
started. Install stack by following [these directions](http://docs.haskellstack.org/en/stable/README.html).

Offset uses Redis for caching, so [install Redis](http://redis.io/topics/quickstart), too.

You'll also need a WordPress site! I used [DigitalOcean](http://www.digitaloceans.com)'s
"One-Click Install" for mine and it works wonderfully, but you can use any WordPress host,
or install and run WordPress locally.

Login in to your WordPress Admin and install the correct version of the
WP API plugin. Go to "Plugins" and "Add New". Search for "json-rest-api"
and install and activate version 1.2.4. (Not version 2, which is kinda
broken.)

Next write up a ".env" file based on "example.env". Add your WordPress username and
password, or create a new user from the WP admin just for Offset. You probably don't
need a password for Redis, in which case just type "NOTAPASSWORDLOL" or some such,
but [if you do](redis security stuff), add that to `REDIS_AUTH`.

Finally git clone or fork or whatever this repository and `stack build` to build your first website.
`stack run homepage` and vist [http://localhost:8000](http://localhost:8000) to
see the default site!

# Customization Basics

This website uses the [Heist templating language](blah). You can edit the
templates in the "templates" directory and also add new ones. You can add a
different templating engine if you prefer, but you'll still need to keep
Heist around if you want to use Offset to display WordPress posts.

You can add or change routes in "src/Site.hs" within the function `site`. By
default it looks like this:

```(Haskell)
site :: Ctxt -> IO Response
site ctxt =
  route ctxt [ end ==> homeHandler
             , path "blog" ==> blogHandler
             , path "echo" // segment ==> echoHandler
             , path "static" ==> staticServe "static",
             , anything ==> heistServe ]
             `fallthrough` notFoundText "Not found."
```

`route` is a function that takes a `RequestContext` of some type and a list
of routes. The routes are made up of segments that you can match on divided
by `//`, with an "arrow" `==>` to a handler for the matching requests. You
can read more about routes and handlers in the [Fn documentation](blah).

# Deploying to DigitalOcean with Circle CI and Quay

This is how I'm deploying my website, and you can too, because all the
necessary config files are here!

I used DigitalOcean's ready-made Docker image.

1. Create an account on [Quay](http://quay.io).
2. SSH into your DigitalOcean server.
3. `docker run -d --name=redis1 redis` creates a Redis docker container.
4. Create a `.env` file based on `example.env`. `REDIS_SERVER` is the IP of the redis
server (try `docker inspect redis1` if you don't know). 
5. Set up your project on Github and [Circle CI](http://circleci.com). Circle will need 
the environment variables "QUAY_USERNAME" and "QUAY_PASSWORD" for your Quay credentials.
6. Push to master on Github. Circle will build a tiny little Docker image for
your website, upload it to Quay, then SSH into your server, pull the new image from
Quay, stop any old images with the same name, and finally, run your new image!

Repeat step 6 as you make changes!

