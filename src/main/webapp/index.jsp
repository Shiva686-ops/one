<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chichaa Store</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f4f1eb;
            color: #252525;
        }

        header {
            background: #24170f;
            color: white;
            padding: 20px 8%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header h2 {
            margin: 0;
            color: #e5b567;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
        }

        .hero {
            background: #d9c2a0;
            padding: 70px 8%;
        }

        .hero h1 {
            font-size: 45px;
            max-width: 600px;
            margin: 0 0 15px;
        }

        .hero p {
            font-size: 18px;
            max-width: 500px;
        }

        .button {
            background: #24170f;
            color: white;
            border: 0;
            padding: 12px 22px;
            border-radius: 6px;
            cursor: pointer;
        }

        section {
            padding: 40px 8%;
        }

        .categories {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
        }

        .category {
            background: white;
            padding: 18px 25px;
            border-radius: 8px;
        }

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 8px #ccc;
        }

        .product h3 {
            margin-top: 0;
        }

        .price {
            color: #9b651d;
            font-size: 20px;
            font-weight: bold;
            margin: 12px 0;
        }

        .add {
            width: 100%;
        }

        footer {
            background: #24170f;
            color: white;
            text-align: center;
            padding: 25px;
        }

        @media (max-width: 800px) {
            nav {
                display: none;
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 500px) {
            .products {
                grid-template-columns: 1fr;
            }

            .hero h1 {
                font-size: 32px;
            }
        }
    </style>
</head>

<body>

<header>
    <h2>Chichaa Store</h2>

    <nav>
        <a href="#home">Home</a>
        <a href="#categories">Categories</a>
        <a href="#products">Products</a>
    </nav>
</header>

<main>
    <section class="hero" id="home">
        <h1>Quality Drinks for Every Occasion</h1>
        <p>
            Discover our collection of whisky, wine, vodka and other
            beverages at Chichaa Store.
        </p>
        <button class="button" id="shopButton">Shop Now</button>
    </section>

    <section id="categories">
        <h2>Categories</h2>

        <div class="categories">
            <div class="category">Whisky</div>
            <div class="category">Wine</div>
            <div class="category">Beer</div>
            <div class="category">Vodka</div>
            <div class="category">Rum</div>
            <div class="category">Champagne</div>
        </div>
    </section>

    <section id="products">
        <h2>Featured Products</h2>

        <div class="products">
            <article class="product">
                <h3>Premium Whisky</h3>
                <p>Rich and smooth flavour.</p>
                <div class="price">$59</div>
                <button class="button add">Add to Cart</button>
            </article>

            <article class="product">
                <h3>Red Wine</h3>
                <p>Classic full-bodied red wine.</p>
                <div class="price">$39</div>
                <button class="button add">Add to Cart</button>
            </article>

            <article class="product">
                <h3>Premium Vodka</h3>
                <p>Clean and refreshing taste.</p>
                <div class="price">$49</div>
                <button class="button add">Add to Cart</button>
            </article>

            <article class="product">
                <h3>Craft Beer</h3>
                <p>Fresh and balanced craft beer.</p>
                <div class="price">$19</div>
                <button class="button add">Add to Cart</button>
            </article>
        </div>
    </section>
</main>

<footer>
    <p>Chichaa Store © 2026</p>
</footer>

<script>
    const shopButton = document.getElementById("shopButton");
    const addButtons = document.querySelectorAll(".add");

    shopButton.addEventListener("click", () => {
        document.getElementById("products").scrollIntoView();
    });

    addButtons.forEach((button) => {
        button.addEventListener("click", () => {
            button.textContent = "Added";
        });
    });
</script>

</body>
</html>
