@yield('tieudetrang')
<head>
    <title>Tieu de</title>
    <meta charset="utf-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<style>
    .container > header {height: 220px}
    .container > nav {height: 60px}
    .container > footer {height: 90p; color:white; text-align: center; padding: 20px}
    .container > main {display: flex; min-height: 500px}
</style>
</head>
<body>
    <div class="container">
        <header class="bg-primary"></header>
        <nav class="bg-warning">@include('menu')</nav>
        <main>
            <article class="col-9 bg-light">
                @yield('noidung')
            </article>
            <aside class="col-3 bg-info">
                thong tin bo sung
            </aside>
        </main>
        <footer class="bg-dark">dduoc lam boi toiiii</footer>
    </div>
</body>