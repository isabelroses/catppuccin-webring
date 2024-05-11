# catppucicn webring

## How to Join
The only required information is your site's **URL** and your desired **slug**.

Optionally, you can also include the following for your site listing:

- Full **title** of your site
- A brief **description** of your site
- Some form of **contact info** (email, fedi, etc)
- If you have one, your **RSS** link

Include your information by adding a new entry to *`websites.json`*

### JSON Example

```json
{
  "name": "Example Website",
  "slug": "example",
  "about": "I'm an example!!!",
  "url": "https://example.com/",
  "rss": "https://example.com/index.xml",
  "owner": "person@example.com"
}
```

## Webring HTML

After that, add the webring HTML somewhere on your site, like the sidebar or footer.
Remember to replace "YOUR_SLUG" with your actual slug: 

```html
<a href="https://ctp-webr.ing/YOUR_SLUG/previous">&lt;-</a><a href="https://ctp-webr.ing/">Catppuccin webring</a><a href="https://ctp-webr.ing/YOUR_SLUG/next">&rarr;</a> 
```
