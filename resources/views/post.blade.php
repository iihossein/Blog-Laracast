<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>
        <link rel="stylesheet" href="/app.css">
    </head>
    <body>
        <article>
            <h1>
                <a href="/post"><?= $post ?></a>
            </h1>
        </article>

        <a href="/">Go Back</a>

    </body>
</html>
