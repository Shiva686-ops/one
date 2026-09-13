<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop</title>

  <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        crossorigin="anonymous">

  <style>
    :root {
      --primary: #1a1a2e;
      --accent: #e07a5f;
      --muted: #6b6b7a;
      --bg: #fafaf8;
      --card: #ffffff;
      --radius: 12px;
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
    }

    .container {
      max-width: 1100px;
      margin: 0 auto;
      padding: 0 20px;
    }

    header {
      background: #fff;
      border-bottom: 1px solid #eee;
      padding: 12px 0;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
    }

    .brand {
      font-weight: 700;
      font-size: 20px;
      color: var(--primary);
      text-decoration: none;
    }

    .brand .accent {
      color: var(--accent);
    }

    nav a {
      color: var(--muted);
      text-decoration: none;
      margin-left: 16px;
      font-size: 14px;
    }

    nav a:hover {
      color: var(--accent);
    }

    .hero {
      padding: 60px 0;
      text-align: center;
    }

    .hero h1 {
      font-size: 36px;
      margin-bottom: 12px;
    }

    .hero p {
      color: var(--muted);
      margin-bottom: 20px;
    }

    .btn {
      display: inline-block;
      padding: 10px 22px;
      border-radius: 999px;
      background: var(--accent);
      color: #fff;
      text-decoration: none;
      font-weight: 600;
      border: none;
      cursor: pointer;
      font-size: 14px;
    }

    .btn:hover {
      opacity: 0.9;
    }

    .section {
      padding: 40px 0;
    }

    .section h2 {
      font-size: 22px;
      margin-bottom: 16px;
    }

    .grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 16px;
    }

    .card {
      background: var(--card);
      border-radius: var(--radius);
      padding: 16px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
    }

    .card h3 {
      font-size: 15px;
      margin-bottom: 6px;
    }

    .card .price {
      font-weight: 700;
      color: var(--accent);
    }

    .card .category {
      font-size: 12px;
      color: var(--muted);
      text-transform: uppercase;
    }

    .cart-info {
      font-size: 14px;
      color: var(--muted);
    }

    footer {
      text-align: center;
      padding: 24px 0;
      color: var(--muted);
      font-size: 13px;
      border-top: 1px solid #eee;
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <header>
    <div class="container header-inner">
      <a class="brand" href="#">Nexus<span class="accent">Shop</span></a>
      <nav>
        <a href="#products">Products</a>
        <a href="#about">About</a>
      </nav>
      <div class="cart-info">
        <em class="fas fa-shopping-bag"></em>
        Cart: <span id="cartCount">0</span>
      </div>
    </div>
  </header>

  <main class="container">
    <section class="hero">
      <h1>Discover Premium Essentials</h1>
      <p>Curated products with free shipping on your first order.</p>
      <a href="#products" class="btn">Shop Now</a>
    </section>

    <section class="section" id="products">
      <h2>Trending Products</h2>
      <div class="grid" id="productsGrid"></div>
    </section>

    <section class="section" id="about">
      <h2>About Us</h2>
      <p>NexusShop is a demo store built with clean, maintainable code.</p>
    </section>
  </main>

  <footer>
    &copy; <span id="year"></span> NexusShop
  </footer>

  <script>
    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro', price: 1099, category: 'Phones' },
      { id: 2, title: 'MacBook Air M2', price: 999, category: 'Laptops' },
      { id: 3, title: 'Apple Watch S8', price: 349, category: 'Wearables' },
      { id: 4, title: 'Sony WH-1000XM5', price: 399, category: 'Audio' }
    ];

    let cartCount = 0;

    function renderProducts() {
      const grid = document.getElementById('productsGrid');
      grid.innerHTML = '';

      PRODUCTS.forEach(function (product) {
        const card = document.createElement('div');
        card.className = 'card';

        const title = document.createElement('h3');
        title.textContent = product.title;

        const category = document.createElement('div');
        category.className = 'category';
        category.textContent = product.category;

        const price = document.createElement('div');
        price.className = 'price';
        price.textContent = '$' + product.price;

        const button = document.createElement('button');
        button.className = 'btn';
        button.textContent = 'Add to Cart';
        button.style.marginTop = '10px';
        button.addEventListener('click', function () {
          addToCart(product.id);
        });

        card.appendChild(category);
        card.appendChild(title);
        card.appendChild(price);
        card.appendChild(button);
        grid.appendChild(card);
      });
    }

    function addToCart() {
      cartCount += 1;
      document.getElementById('cartCount').textContent = cartCount;
    }

    function init() {
      renderProducts();
      document.getElementById('year').textContent = new Date().getFullYear();
    }

    document.addEventListener('DOMContentLoaded', init);
  </script>
</body>
</html>
