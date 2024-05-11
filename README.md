<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	The Catppuccin <a href="https://en.wikipedia.org/wiki/Webring">Webring</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
	<a href="https://github.com/isabelroses/catppuccin-webring/stargazers"><img src="https://img.shields.io/github/stars/isabelroses/catppuccin-webring?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/isabelroses/catppuccin-webring/issues"><img src="https://img.shields.io/github/issues/isabelroses/catppuccin-webring?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/isabelroses/catppuccin-webring/contributors"><img src="https://img.shields.io/github/contributors/isabelroses/catppuccin-webring?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
	<img src="assets/preview.webp"/>
</p>

## 🙋 FAQ

-	Q: **_"How can I join?"_**\
	A: Feel free to add yourself to the webring by adding a new entry to *`websites.json`*. The only required information is your site's **URL** and your desired **slug**. Optionally, you can also include the following for your site listing:

    - Full **title** of your site
    - A brief **description** of your site
    - Some form of **contact info** (email, fedi, etc)
    - If you have one, your **RSS** link

    An entry might look like:
    
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
    
    After that, add the webring HTML somewhere on your site, like the sidebar or footer.
    Remember to replace "YOUR_SLUG" with your actual slug: 
    
    ```html
    <a href="https://ctp-webr.ing/YOUR_SLUG/previous">&larr;-</a><a href="https://ctp-webr.ing/">Catppuccin webring</a><a href="https://ctp-webr.ing/YOUR_SLUG/next">&rarr;</a>  
    ```

## 💝 Thanks to

- [Isabel Roses](https://github.com/isabelroses)

&nbsp;

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
	<a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
