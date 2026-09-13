<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chichaa LiquorMart – premium spirits & wine</title>
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Roboto, system-ui, sans-serif;
        }

        body {
            background: #fbf9f6;
            color: #1e1e1e;
            line-height: 1.5;
        }

        /* header / navbar */
        .header {
            background: #0f0f0f;
            color: #f5e7d9;
            padding: 0.9rem 2.5rem;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            border-bottom: 3px solid #c49a6c;
            box-shadow: 0 6px 12px rgba(0,0,0,0.1);
        }

        .logo-area {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .logo-icon {
            font-size: 2rem;
            color: #d4af7a;
        }

        .logo-text {
            font-size: 1.9rem;
            font-weight: 600;
            letter-spacing: 1.5px;
            text-transform: uppercase;
            color: #f0d7b9;
            text-shadow: 2px 2px 0 #3d2b1a;
        }

        .logo-text span {
            font-weight: 300;
            color: #b5895b;
            font-style: italic;
            letter-spacing: 0.5px;
        }

        .nav-links {
            display: flex;
            gap: 2.2rem;
            font-weight: 500;
            font-size: 1.1rem;
            align-items: center;
        }

        .nav-links a {
            color: #e9d9c6;
            text-decoration: none;
            transition: 0.2s;
            border-bottom: 2px solid transparent;
            padding-bottom: 4px;
        }

        .nav-links a:hover {
            color: #dbbd92;
            border-bottom-color: #c49a6c;
        }

        .cart-icon {
            background: #2b2b2b;
            padding: 0.5rem 1rem;
            border-radius: 40px;
            display: flex;
            align-items: center;
            gap: 8px;
            border: 1px solid #5f4a32;
            transition: 0.2s;
        }

        .cart-icon i {
            color: #e6c9a8;
        }

        .cart-icon:hover {
            background: #3d2e1f;
            border-color: #b18b5e;
        }

        /* hero */
        .hero {
            background: linear-gradient(rgba(10, 7, 5, 0.7), rgba(20, 12, 6, 0.8)), url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 600" width="1200" height="600"><rect width="1200" height="600" fill="%231a130d"/><circle cx="200" cy="150" r="80" fill="%233d2b1a" opacity="0.3"/><circle cx="950" cy="400" r="150" fill="%233d2b1a" opacity="0.3"/><circle cx="600" cy="500" r="100" fill="%235a3f2b" opacity="0.2"/><path d="M0 350 Q300 200 600 350 T1200 300" stroke="%23b48c5c" stroke-width="2" fill="none" opacity="0.15"/></svg>');
            background-size: cover;
            background-position: center 30%;
            padding: 5rem 2.5rem;
            color: #fff4e6;
            text-align: center;
        }

        .hero h1 {
            font-size: 3.5rem;
            font-weight: 700;
            letter-spacing: 2px;
            text-transform: uppercase;
            text-shadow: 3px 3px 0 #1e1309;
            margin-bottom: 1rem;
        }

        .hero h1 i {
            color: #d4af7a;
            font-size: 3rem;
            margin: 0 0.5rem;
        }

        .hero p {
            font-size: 1.3rem;
            max-width: 700px;
            margin: 1rem auto 2rem;
            color: #eadbc8;
            font-weight: 300;
            font-style: italic;
        }

        .btn {
            display: inline-block;
            background: #c49a6c;
            color: #17120e;
            font-weight: 700;
            padding: 0.9rem 2.5rem;
            border-radius: 40px;
            text-decoration: none;
            letter-spacing: 1px;
            transition: 0.2s;
            border: 1px solid #e2c8a8;
            box-shadow: 0 6px 0 #4f3824;
        }

        .btn:hover {
            background: #dbb07c;
            transform: translateY(-2px);
            box-shadow: 0 8px 0 #4f3824;
        }

        .btn:active {
            transform: translateY(4px);
            box-shadow: 0 2px 0 #4f3824;
        }

        /* section titles */
        .section-title {
            font-size: 2.2rem;
            font-weight: 600;
            color: #2a1e14;
            text-align: center;
            margin: 3rem 0 1.5rem;
            position: relative;
            letter-spacing: 1px;
        }

        .section-title:after {
            content: '';
            display: block;
            width: 90px;
            height: 4px;
            background: #c49a6c;
            margin: 0.8rem auto 0;
            border-radius: 4px;
        }

        /* product grid */
        .products {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
            gap: 2rem;
            padding: 0 2.5rem 3rem;
            max-width: 1400px;
            margin: 0 auto;
        }

        .product-card {
            background: #ffffff;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 8px 20px rgba(0,0,0,0.06);
            transition: 0.25s;
            border: 1px solid #ede3d7;
            display: flex;
            flex-direction: column;
        }

        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 18px 30px rgba(60, 40, 20, 0.12);
            border-color: #cbb295;
        }

        .product-img {
            background: #f2ede5;
            height: 220px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 5rem;
            color: #8b6f4c;
            border-bottom: 2px solid #e6d6c0;
        }

        .product-info {
            padding: 1.5rem 1.2rem 1.8rem;
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        .product-name {
            font-size: 1.4rem;
            font-weight: 700;
            color: #231d16;
            margin-bottom: 0.3rem;
            letter-spacing: 0.5px;
        }

        .product-type {
            font-size: 0.9rem;
            text-transform: uppercase;
            letter-spacing: 2px;
            color: #aa8b66;
            font-weight: 500;
            margin-bottom: 0.8rem;
        }

        .product-price {
            font-size: 1.6rem;
            font-weight: 700;
            color: #6b4f32;
            margin: 0.6rem 0 1.2rem;
        }

        .product-price small {
            font-size: 0.9rem;
            font-weight: 400;
            color: #9c8875;
        }

        .add-to-cart {
            background: #1e1a16;
            color: #f3e5d3;
            border: none;
            padding: 0.9rem 1.2rem;
            border-radius: 40px;
            font-weight: 600;
            letter-spacing: 0.7px;
            cursor: pointer;
            transition: 0.2s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            font-size: 1rem;
            margin-top: auto;
            border: 1px solid #352c24;
        }

        .add-to-cart i {
            font-size: 1rem;
            color: #cfb594;
        }

        .add-to-cart:hover {
            background: #c49a6c;
            color: #17120e;
            border-color: #a97f52;
        }

        .add-to-cart:hover i {
            color: #17120e;
        }

        /* features strip */
        .features {
            background: #1f1a15;
            color: #eadbc8;
            padding: 3.5rem 2.5rem;
            margin-top: 2rem;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 3.5rem;
            text-align: center;
            border-top: 4px solid #b48c5c;
        }

        .feature-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 10px;
            max-width: 220px;
        }

        .feature-item i {
            font-size: 2.5rem;
            color: #c9a97e;
        }

        .feature-item h3 {
            font-size: 1.2rem;
            font-weight: 600;
            letter-spacing: 0.5px;
            color: #f3e0ca;
        }

        .feature-item p {
            font-size: 0.9rem;
            color: #cbb69b;
        }

        /* footer */
        .footer {
            background: #0d0b09;
            color: #b8a187;
            padding: 2.2rem 2.5rem;
            text-align: center;
            font-size: 0.95rem;
            border-top: 1px solid #3a2e23;
        }

        .footer .store-name {
            font-size: 1.4rem;
            font-weight: 600;
            letter-spacing: 2px;
            color: #d4af7a;
            margin-bottom: 0.5rem;
        }

        .footer .store-name i {
            margin: 0 8px;
            color: #b5895b;
        }

        .footer .small-note {
            margin-top: 1.2rem;
            font-size: 0.8rem;
            color: #6e5b49;
        }

        /* responsive */
        @media (max-width: 700px) {
            .header {
                flex-direction: column;
                gap: 1rem;
                padding: 1rem 1.5rem;
            }
            .nav-links {
                gap: 1.5rem;
                flex-wrap: wrap;
                justify-content: center;
            }
            .hero h1 {
                font-size: 2.2rem;
            }
            .hero p {
                font-size: 1.1rem;
            }
            .logo-text {
                font-size: 1.5rem;
            }
        }

        @media (max-width: 480px) {
            .products {
                padding: 0 1.2rem 2rem;
            }
            .section-title {
                font-size: 1.8rem;
            }
        }
    </style>
</head>
<body>
    <header class="header">
        <div class="logo-area">
            <i class="fas fa-wine-bottle logo-icon"></i>
            <div class="logo-text">Chichaa <span>LiquorMart</span></div>
        </div>
        <div class="nav-links">
            <a href="#">Home</a>
            <a href="#">Spirits</a>
            <a href="#">Wine</a>
            <a href="#">Beer</a>
            <a href="#">Deals</a>
            <a href="#" class="cart-icon"><i class="fas fa-shopping-cart"></i> Cart (0)</a>
        </div>
    </header>

    <section class="hero">
        <h1><i class="fas fa-glass-cheers"></i> Chichaa LiquorMart <i class="fas fa-glass-whiskey"></i></h1>
        <p>Premium spirits, fine wines & craft beers — delivered to your doorstep.</p>
        <a href="#" class="btn">Shop now <i class="fas fa-arrow-right" style="margin-left: 8px;"></i></a>
    </section>

    <!-- product showcase -->
    <h2 class="section-title">Featured collection</h2>
    <div class="products">
        <!-- product 1 -->
        <div class="product-card">
            <div class="product-img">
                <i class="fas fa-wine-bottle"></i>
            </div>
            <div class="product-info">
                <div class="product-name">Macallan 18</div>
                <div class="product-type">Single Malt Scotch</div>
                <div class="product-price">$329.99 <small>/ 750ml</small></div>
                <button class="add-to-cart"><i class="fas fa-cart-plus"></i> Add to cart</button>
            </div>
        </div>
        <!-- product 2 -->
        <div class="product-card">
            <div class="product-img">
                <i class="fas fa-wine-glass-alt"></i>
            </div>
            <div class="product-info">
                <div class="product-name">Château Margaux</div>
                <div class="product-type">Red Wine · 2018</div>
                <div class="product-price">$599.00 <small>/ 750ml</small></div>
                <button class="add-to-cart"><i class="fas fa-cart-plus"></i> Add to cart</button>
            </div>
        </div>
        <!-- product 3 -->
        <div class="product-card">
            <div class="product-img">
                <i class="fas fa-beer"></i>
            </div>
            <div class="product-info">
                <div class="product-name">Chichaa IPA</div>
                <div class="product-type">Craft Beer · 6 pack</div>
                <div class="product-price">$16.99 <small>/ 6 x 330ml</small></div>
                <button class="add-to-cart"><i class="fas fa-cart-plus"></i> Add to cart</button>
            </div>
        </div>
        <!-- product 4 -->
        <div class="product-card">
            <div class="product-img">
                <i class="fas fa-cocktail"></i>
            </div>
            <div class="product-info">
                <div class="product-name">Patrón Silver</div>
                <div class="product-type">Tequila · 100% Agave</div>
                <div class="product-price">$54.50 <small>/ 750ml</small></div>
                <button class="add-to-cart"><i class="fas fa-cart-plus"></i> Add to cart</button>
            </div>
        </div>
        <!-- product 5 -->
        <div class="product-card">
            <div class="product-img">
                <i class="fas fa-wine-bottle"></i>
            </div>
            <div class="product-info">
                <div class="product-name">Hendrick's Gin</div>
                <div class="product-type">Small Batch Gin</div>
                <div class="product-price">$39.99 <small>/ 750ml</small></div>
                <button class="add-to-cart"><i class="fas fa-cart-plus"></i> Add to cart</button>
            </div>
        </div>
        <!-- product 6 -->
        <div class="product-card">
            <div class="product-img">
                <i class="fas fa-wine-glass-alt"></i>
            </div>
            <div class="product-info">
                <div class="product-name">Moët & Chandon</div>
                <div class="product-type">Champagne · Brut</div>
                <div class="product-price">$72.00 <small>/ 750ml</small></div>
                <button class="add-to-cart"><i class="fas fa-cart-plus"></i> Add to cart</button>
            </div>
        </div>
    </div>

    <!-- features -->
    <div class="features">
        <div class="feature-item">
            <i class="fas fa-truck-fast"></i>
            <h3>Fast delivery</h3>
            <p>Same-day in select areas</p>
        </div>
        <div class="feature-item">
            <i class="fas fa-shield-alt"></i>
            <h3>100% authentic</h3>
            <p>Sourced from trusted distilleries</p>
        </div>
        <div class="feature-item">
            <i class="fas fa-gift"></i>
            <h3>Gift wrapping</h3>
            <p>Complimentary for orders over $100</p>
        </div>
        <div class="feature-item">
            <i class="fas fa-headset"></i>
            <h3>Expert support</h3>
            <p>Sommelier recommendations</p>
        </div>
    </div>

    <footer class="footer">
        <div class="store-name"><i class="fas fa-wine-bottle"></i> Chichaa LiquorMart <i class="fas fa-wine-bottle"></i></div>
        <p>Drink responsibly. Must be 21+ to purchase. © 2025 Chichaa LiquorMart. All rights reserved.</p>
        <div class="small-note">
            <i class="fas fa-map-pin"></i> 123 Spirit Avenue, Suite 500 · <i class="fas fa-phone-alt"></i> (555) 724-9372
        </div>
    </footer>
</body>
</html>
