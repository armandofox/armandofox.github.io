---
title: "Deploy a super-simple, static HTML/CSS/JS website"
permalink: /simplesite
type: page
layout: single
toc: true
sidebar:
  nav: "random"
---

You can do so much these days with basic HTML/CSS/JS that a purely
static site will get you a long way.  Here's a free (modulo vanity
domains) and easy recipe for deploying one.

**Assumes:** you're familiar with basics of Github and HTML/CSS.  if
not, Github has great hosted tutorials and Mozilla WebDev has a great
course on HTML/CSS basics. 

tl;dr my advice is to start with a super-simple static site as i describe below, and if it gets more complicated, switch to one of the 'alternatives' at the end.  the process of setting up such a site yourself is free and just requires some comfort with HTML, file management, and Github.  Apps like squarespace and wix make their business by targeting users who know nothing about those things and putting a GUI in front of them, but they hold your content captive.

My simple method (which i've used for several static sites) explicitly does NOT rely on apps that give you a page-making GUI and hide the details of where things are stored, how they're uploaded, etc - for simple sites, i find that approach (a) $$$ and (b) too complicated.  and your content is standards compliant HTML, which is highly portable so you can switch to another hosting scheme later.

if you don't like the approach below, i also suggest alternatives at the end.

executive summary of steps:

1) find an HTML template you like
2) create a github repo for the files
3) use netlify to point to that github repo and deploy publicly
4) register (purchase) your desired domain name and add it to the deploy

(only step 4 requires any money.)

1) find a static HTML template you like.  developer Xiaoying Riley at https://themes.3rdwavemedia.com/ has a bunch of free and paid ones that are very tasteful.  (don't try to make your own - unless you're a designer, it'll look like crap.)  her themes are pure HTML+CSS (and a little bit of JS) so perfect for static sites; and you can just remove/comment out any "page sections" you don't need.  for example, i used her themes to create and deploy this site for my open-source ticketing system and this one for my ex-spouse, just by replacing the text and images in the templates.

2) you have a github account, right?  put your entire site into a github repo - that's where the files will live.  (indeed, for step zero, just download the free template and put it as-is into a github repo, just to have something to test with.)  i strongly suggest making the repo publicly readable (the website will be public, after all) as it saves steps below.

3) head over to netlify.com and choose "login with github".  select Add Project > Import Existing Project, then select GitHub and your repo name.  if the repo is not set to Publicly-readable, you'll need to authorize netlify on github. 

on the netlify project configuration page, pick whatever value you want for Name - the project will initially deploy at the URL <name>.netlify.app but i'll discuss custom domain below, so the name is roughly irrelevant.  leave the deploy branch as 'main' (unless you're doing funny things with branches on GH) and base directory can be left blank (specifying the repo's root directory) again unless you're doing something like organizing the site as a subdirectory of a larger repo.  you can leave all the other setting as they are.  when you clikc Deploy, netlify will attempt to grab the contents of the repo and deploy them behind a webserver at <name>.netlify.app.  you should now be able to visit that url in your browser.  in general, each time a `git push` happens on the deploy branch (`main` by default), netlify will auto-deploy the revised version; so once this deploy process is set up, you never have to login to netlify to update the site.  this is good, because the netlify free plan i think only allows 1 authorized user, whereas you can add many editors to your github repo.

4) DNS: choose a provider you like - they're all comparable, i like namecheap.com since they're not trying to always upsell you stuff, and i hate godaddy.com because they support causes that i find despicable.  purchase/register your preferred domain.  this is the one step that is not free and never has been.  you will need to pay an annual renewal fee for the domain.  if you're not wedded to a particular vanity domain, very often the "alternative" toplevel domains (.info, .cloud, .club, etc) cost a lot less than the stalwart .com.  please don't use a .net site; i find it technically offensive, since those sites *used* to be designated as having to do with network/infrastructure support, but today they are just the "well the .com site was taken" sites.

5) go back to netlify,select your project and go to Domain Management.  there you can add a new primary domain to associate with the site. netlify will give you instructions on the correct CNAME and A records for your DNS to point to the site.  they have explicit step-by-step instructions for many popular domain registrars.

6) to edit the site, you commit and push changes to github.  to give others edit access, you just add them as writers on that repo in github.  simple, no?  and you can verify that the site works locally before pushing by just opening its front page (index.html) in your local browser and navigating around.

that's about it.  the only downside of the above approach is that you have to manually edit your web files, but for simple static sites i actually prefer that.  (yes, i use emacs for it.)

ALTERNATIVES:

- hosting sites like Wix and Squarespace give you a nice friendly GUI to absolutely all the above.  in exchange, they charge you a l;ot more $$, and you are beholden to them since your content is captive on their platform.  i would only reecommend this for someone so nontechnical that they aren't comfortable with the idea of files, repos, etc.

- WordPress is an alternative: it is open source, has a GUI for building pages, lots of plugins, etc, but you need to host it on a site that supports server-side scripting, hence $. (the software itself is free and runs in the cloud, but you have to have somewhere to run it, and it's sufficiently complicated to provision that you don't want to DIY on azure/AWS/etc.)  not too expensive, you can usually get by for ~$5-$10/mo or even less if you pay for a year upfront, and there;s a huge ecosystem of Wordpress hosting sites and it's well supported; but even with its GUI, its dizzying array of plug-ins make it a BIG step up (learning curve wise) from my barebones approach below.  you could proabbly find a site that gives you some kind of "free trial" to see if you like this approach, but if your website doesn't change frequently, this is proabbly overkill.  it's designed for people for whom SEO matters, e.g.

- you can use a "static site builder" like Jekyll, which lets you author pages in Markdown and then converts the whole thing to HTML.  this is more appropriate if your site will be frequently updated, like a blog; but its learning curve isn't terribly forgiving, and you have to add extra Deploy steps to netlify to run it each time you make a change.  (it does run within the free plan though, since it isn't server-side scripting but rather a single set of commands, basically like a makefile, that runs once per deploy.)  

- there are probably also online tools that give you a GUI for building a page and then spit out the corresponding HTML; i've never tried searching for one but it probably exists.  hell, chatGPT can write a good deal of HTML for you. but in terms of making it look decent, definitely stick to CSS templates created by professionals, like the free ones i reference above.  (there's also a lot of free & paid WOrdPRess templates, but they rely specifically on WP's API and its machinery, so you cannot in general use them easily on a static site, and vice versa.)

hope this helps! if you create the content pages but are getting stuck on other stuff, we can do a zoom screenshare if you want me to walk you thru part of it.

