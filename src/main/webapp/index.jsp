Sure — here is the entire UI in one single copyable code block. You can click the Copy button on the top-right of the code block and paste it directly into index.html.

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop — Modern E-Commerce</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

:root{
    --primary:#111827;
    --primary-light:#1f2937;
    --accent:#ff5a36;
    --accent-dark:#e64a2b;
    --yellow:#fbbf24;
    --green:#16a34a;
    --red:#ef4444;
    --bg:#f8fafc;
    --white:#ffffff;
    --muted:#64748b;
    --border:#e5e7eb;
    --shadow:0 10px 30px rgba(15,23,42,.07);
    --radius:18px;
    --container:1240px;
}

*{
    box-sizing:border-box;
    margin:0;
    padding:0;
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:Inter,sans-serif;
    background:var(--bg);
    color:var(--primary);
    line-height:1.5;
}

button,
input{
    font:inherit;
}

button{
    cursor:pointer;
}

a{
    color:inherit;
    text-decoration:none;
}

img{
    max-width:100%;
}

.container{
    width:min(100% - 32px,var(--container));
    margin:auto;
}

/* ================= HEADER ================= */

header{
    position:sticky;
    top:0;
    z-index:100;
    background:rgba(255,255,255,.95);
    backdrop-filter:blur(16px);
    border-bottom:1px solid var(--border);
}

.top-header{
    height:76px;
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:28px;
}

.logo{
    display:flex;
    align-items:center;
    gap:10px;
    font-family:Poppins,sans-serif;
    font-size:22px;
    font-weight:800;
    white-space:nowrap;
}

.logo-icon{
    width:40px;
    height:40px;
    display:grid;
    place-items:center;
    background:var(--accent);
    color:white;
    border-radius:12px;
    box-shadow:0 8px 18px rgba(255,90,54,.25);
}

.logo span{
    color:var(--accent);
}

.desktop-nav{
    display:flex;
    align-items:center;
    gap:26px;
}

.desktop-nav a{
    color:#475569;
    font-size:14px;
    font-weight:600;
    transition:.2s;
}

.desktop-nav a:hover,
.desktop-nav a.active{
    color:var(--accent);
}

.header-right{
    display:flex;
    align-items:center;
    gap:10px;
}

.search-box{
    width:270px;
    height:42px;
    display:flex;
    align-items:center;
    gap:10px;
    padding:0 14px;
    background:#f1f5f9;
    border:1px solid transparent;
    border-radius:12px;
    transition:.2s;
}

.search-box:focus-within{
    background:white;
    border-color:var(--accent);
    box-shadow:0 0 0 3px rgba(255,90,54,.08);
}

.search-box i{
    color:#94a3b8;
}

.search-box input{
    width:100%;
    border:0;
    outline:0;
    background:transparent;
    font-size:13px;
}

.header-btn{
    position:relative;
    width:42px;
    height:42px;
    border:1px solid var(--border);
    background:white;
    border-radius:12px;
    color:#475569;
    transition:.2s;
}

.header-btn:hover{
    color:var(--accent);
    border-color:#fecaca;
    background:#fff7f5;
}

.cart-badge{
    position:absolute;
    top:-6px;
    right:-5px;
    width:19px;
    height:19px;
    display:grid;
    place-items:center;
    border-radius:50%;
    background:var(--accent);
    color:white;
    font-size:10px;
    font-weight:700;
}

.mobile-menu-btn{
    display:none;
    width:42px;
    height:42px;
    border:1px solid var(--border);
    background:white;
    border-radius:12px;
}

/* ================= HERO ================= */

.hero{
    margin-top:24px;
    min-height:500px;
    display:flex;
    align-items:center;
    border-radius:26px;
    overflow:hidden;

    background:
    linear-gradient(
        90deg,
        rgba(15,23,42,.88) 0%,
        rgba(15,23,42,.55) 48%,
        rgba(15,23,42,.08) 100%
    ),
    url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=85")
    center/cover;
}

.hero-content{
    max-width:650px;
    padding:70px 0;
    color:white;
}

.hero-tag{
    display:inline-flex;
    align-items:center;
    gap:8px;
    padding:8px 14px;
    background:rgba(255,255,255,.12);
    border:1px solid rgba(255,255,255,.2);
    border-radius:999px;
    font-size:12px;
    font-weight:700;
    margin-bottom:20px;
}

.hero h1{
    font-family:Poppins,sans-serif;
    font-size:clamp(38px,5vw,64px);
    line-height:1.08;
    letter-spacing:-2px;
    margin-bottom:18px;
}

.hero h1 span{
    color:#ff8a6f;
}

.hero p{
    color:#e2e8f0;
    max-width:560px;
    font-size:16px;
    margin-bottom:28px;
}

.hero-actions{
    display:flex;
    gap:12px;
    flex-wrap:wrap;
}

.btn{
    border:0;
    border-radius:12px;
    padding:13px 20px;
    display:inline-flex;
    align-items:center;
    justify-content:center;
    gap:9px;
    font-weight:700;
    transition:.2s;
}

.btn-primary{
    background:var(--accent);
    color:white;
    box-shadow:0 10px 20px rgba(255,90,54,.25);
}

.btn-primary:hover{
    background:var(--accent-dark);
    transform:translateY(-2px);
}

.btn-light{
    background:white;
    color:var(--primary);
}

.btn-light:hover{
    transform:translateY(-2px);
}

/* ================= TRUST ================= */

.trust-bar{
    margin:22px 0 0;
    display:grid;
    grid-template-columns:repeat(4,1fr);
    background:white;
    border:1px solid var(--border);
    border-radius:18px;
    box-shadow:var(--shadow);
}

.trust-item{
    display:flex;
    align-items:center;
    gap:14px;
    padding:20px;
    border-right:1px solid var(--border);
}

.trust-item:last-child{
    border-right:0;
}

.trust-icon{
    width:42px;
    height:42px;
    display:grid;
    place-items:center;
    background:#fff1ed;
    color:var(--accent);
    border-radius:12px;
}

.trust-item strong{
    display:block;
    font-size:13px;
}

.trust-item small{
    color:var(--muted);
    font-size:11px;
}

/* ================= SECTIONS ================= */

.section{
    padding:70px 0 0;
}

.section-header{
    display:flex;
    align-items:end;
    justify-content:space-between;
    gap:20px;
    margin-bottom:24px;
}

.section-header h2{
    font-family:Poppins,sans-serif;
    font-size:28px;
    letter-spacing:-.7px;
}

.section-header p{
    margin-top:5px;
    color:var(--muted);
    font-size:14px;
}

.view-all{
    color:var(--accent);
    font-size:13px;
    font-weight:700;
}

/* ================= CATEGORIES ================= */

.categories{
    display:grid;
    grid-template-columns:repeat(6,1fr);
    gap:16px;
}

.category-card{
    padding:24px 14px;
    background:white;
    border:1px solid var(--border);
    border-radius:18px;
    text-align:center;
    transition:.25s;
    cursor:pointer;
}

.category-card:hover{
    transform:translateY(-5px);
    border-color:#fed7d0;
    box-shadow:var(--shadow);
}

.category-icon{
    width:60px;
    height:60px;
    margin:0 auto 14px;
    display:grid;
    place-items:center;
    border-radius:18px;
    background:#fff5f2;
    color:var(--accent);
    font-size:23px;
}

.category-card h3{
    font-size:14px;
    margin-bottom:3px;
}

.category-card p{
    color:var(--muted);
    font-size:11px;
}

/* ================= PRODUCTS ================= */

.product-tools{
    display:flex;
    gap:8px;
}

.filter-btn{
    padding:9px 13px;
    background:white;
    border:1px solid var(--border);
    border-radius:10px;
    color:#64748b;
    font-size:12px;
    font-weight:600;
}

.filter-btn.active{
    color:var(--accent);
    border-color:#fed7d0;
    background:#fff7f5;
}

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:18px;
}

.product-card{
    position:relative;
    overflow:hidden;
    display:flex;
    flex-direction:column;
    background:white;
    border:1px solid var(--border);
    border-radius:18px;
    transition:.25s;
}

.product-card:hover{
    transform:translateY(-5px);
    box-shadow:var(--shadow);
}

.product-image{
    position:relative;
    height:245px;
    overflow:hidden;
    background:#f1f5f9;
}

.product-image img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.4s;
}

.product-card:hover .product-image img{
    transform:scale(1.05);
}

.product-badge{
    position:absolute;
    top:12px;
    left:12px;
    padding:6px 9px;
    border-radius:7px;
    background:var(--accent);
    color:white;
    font-size:10px;
    font-weight:800;
    z-index:2;
}

.product-wishlist{
    position:absolute;
    top:10px;
    right:10px;
    width:35px;
    height:35px;
    display:grid;
    place-items:center;
    border:0;
    border-radius:50%;
    background:rgba(255,255,255,.94);
    color:#64748b;
    box-shadow:0 4px 12px rgba(0,0,0,.08);
    z-index:2;
}

.product-wishlist:hover,
.product-wishlist.active{
    color:var(--red);
}

.product-info{
    padding:17px;
    display:flex;
    flex-direction:column;
    flex:1;
}

.product-category{
    color:var(--muted);
    font-size:11px;
    margin-bottom:5px;
}

.product-title{
    font-size:14px;
    font-weight:700;
    margin-bottom:8px;
}

.rating{
    display:flex;
    align-items:center;
    gap:5px;
    color:var(--yellow);
    font-size:12px;
    margin-bottom:14px;
}

.rating span{
    color:var(--muted);
    font-size:11px;
}

.price-row{
    display:flex;
    align-items:center;
    justify-content:space-between;
    margin-top:auto;
}

.price{
    font-size:19px;
    font-weight:800;
}

.old-price{
    margin-left:5px;
    color:#94a3b8;
    font-size:11px;
    text-decoration:line-through;
    font-weight:500;
}

.add-cart{
    width:38px;
    height:38px;
    border:0;
    border-radius:10px;
    background:var(--primary);
    color:white;
    transition:.2s;
}

.add-cart:hover{
    background:var(--accent);
}

/* ================= DEAL ================= */

.deal{
    display:grid;
    grid-template-columns:1fr 1fr;
    overflow:hidden;
    background:#111827;
    border-radius:22px;
    color:white;
}

.deal-image{
    min-height:400px;
    background:
    url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85")
    center/cover;
}

.deal-content{
    display:flex;
    flex-direction:column;
    justify-content:center;
    padding:50px;
}

.deal-label{
    display:inline-flex;
    width:fit-content;
    padding:7px 10px;
    background:var(--accent);
    border-radius:7px;
    font-size:11px;
    font-weight:800;
    margin-bottom:16px;
}

.deal-content h2{
    font-family:Poppins,sans-serif;
    font-size:36px;
    margin-bottom:10px;
}

.deal-content p{
    color:#cbd5e1;
    font-size:14px;
    max-width:450px;
}

.timer{
    display:flex;
    gap:10px;
    margin:25px 0;
}

.timer-box{
    width:65px;
    padding:10px 5px;
    text-align:center;
    background:#1f2937;
    border:1px solid #374151;
    border-radius:10px;
}

.timer-box strong{
    display:block;
    font-size:21px;
}

.timer-box small{
    color:#94a3b8;
    font-size:9px;
}

.deal-price{
    display:flex;
    align-items:center;
    gap:10px;
    margin-bottom:22px;
}

.deal-price strong{
    font-size:30px;
}

.deal-price del{
    color:#94a3b8;
}

/* ================= TESTIMONIALS ================= */

.testimonials{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:18px;
}

.testimonial{
    padding:24px;
    background:white;
    border:1px solid var(--border);
    border-radius:18px;
}

.testimonial-stars{
    color:var(--yellow);
    font-size:13px;
    margin-bottom:15px;
}

.testimonial p{
    color:#475569;
    font-size:13px;
    line-height:1.8;
    margin-bottom:20px;
}

.customer{
    display:flex;
    align-items:center;
    gap:10px;
}

.customer img{
    width:42px;
    height:42px;
    border-radius:50%;
    object-fit:cover;
}

.customer strong{
    display:block;
    font-size:13px;
}

.customer small{
    color:var(--muted);
    font-size:10px;
}

/* ================= NEWSLETTER ================= */

.newsletter{
    margin-top:70px;
    padding:50px;
    border-radius:22px;
    text-align:center;
    color:white;

    background:
    radial-gradient(
        circle at top right,
        rgba(255,90,54,.45),
        transparent 35%
    ),
    #111827;
}

.newsletter h2{
    font-family:Poppins,sans-serif;
    font-size:30px;
    margin-bottom:8px;
}

.newsletter p{
    color:#cbd5e1;
    font-size:13px;
    margin-bottom:22px;
}

.newsletter-form{
    display:flex;
    max-width:500px;
    margin:auto;
    padding:5px;
    background:white;
    border-radius:13px;
}

.newsletter-form input{
    flex:1;
    min-width:0;
    padding:11px 14px;
    border:0;
    outline:0;
}

.newsletter-form button{
    padding:11px 18px;
    border:0;
    border-radius:9px;
    background:var(--accent);
    color:white;
    font-weight:700;
}

#newsletterMsg{
    margin-top:12px;
    font-size:12px;
}

/* ================= FOOTER ================= */

footer{
    margin-top:70px;
    padding:50px 0 25px;
    background:#0b1120;
    color:#cbd5e1;
}

.footer-grid{
    display:grid;
    grid-template-columns:2fr 1fr 1fr 1fr;
    gap:40px;
}

.footer-brand{
    color:white;
    font-family:Poppins,sans-serif;
    font-size:20px;
    font-weight:800;
}

.footer-brand span{
    color:var(--accent);
}

.footer-description{
    max-width:330px;
    margin-top:12px;
    color:#94a3b8;
    font-size:12px;
    line-height:1.8;
}

.socials{
    display:flex;
    gap:8px;
    margin-top:18px;
}

.social{
    width:36px;
    height:36px;
    display:grid;
    place-items:center;
    border-radius:9px;
    background:#1e293b;
    color:#cbd5e1;
}

.social:hover{
    background:var(--accent);
    color:white;
}

.footer-column h4{
    color:white;
    font-size:13px;
    margin-bottom:15px;
}

.footer-column a{
    display:block;
    margin-bottom:10px;
    color:#94a3b8;
    font-size:12px;
}

.footer-column a:hover{
    color:white;
}

.copyright{
    padding-top:25px;
    margin-top:35px;
    border-top:1px solid #1e293b;
    text-align:center;
    color:#64748b;
    font-size:11px;
}

/* ================= TOAST ================= */

.toast{
    position:fixed;
    right:20px;
    bottom:20px;
    z-index:999;
    display:flex;
    align-items:center;
    gap:10px;
    padding:13px 17px;
    background:#111827;
    color:white;
    border-radius:12px;
    box-shadow:0 15px 40px rgba(0,0,0,.2);

    transform:translateY(100px);
    opacity:0;
    pointer-events:none;

    transition:.3s;
}

.toast.show{
    transform:translateY(0);
    opacity:1;
}

.toast i{
    color:#4ade80;
}

/* ================= MOBILE NAV ================= */

.mobile-nav{
    display:none;
    padding:12px 0 18px;
    border-top:1px solid var(--border);
}

.mobile-nav.open{
    display:block;
}

.mobile-nav a{
    display:block;
    padding:12px 0;
    font-size:14px;
    font-weight:600;
    color:#475569;
}

/* ================= RESPONSIVE ================= */

@media(max-width:1050px){

    .desktop-nav{
        display:none;
    }

    .mobile-menu-btn{
        display:block;
    }

    .top-header{
        gap:10px;
    }

    .search-box{
        width:220px;
    }

    .categories{
        grid-template-columns:repeat(3,1fr);
    }

    .products{
        grid-template-columns:repeat(3,1fr);
    }
}

@media(max-width:760px){

    .container{
        width:min(100% - 22px,var(--container));
    }

    .top-header{
        height:66px;
    }

    .logo{
        font-size:18px;
    }

    .logo-icon{
        width:35px;
        height:35px;
    }

    .search-box{
        display:none;
    }

    .header-btn{
        width:38px;
        height:38px;
    }

    .hero{
        min-height:460px;
        border-radius:18px;

        background:
        linear-gradient(
            90deg,
            rgba(15,23,42,.88),
            rgba(15,23,42,.5)
        ),
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1000&q=80")
        center/cover;
    }

    .hero-content{
        padding:40px 20px;
    }

    .hero h1{
        font-size:38px;
        letter-spacing:-1px;
    }

    .trust-bar{
        grid-template-columns:repeat(2,1fr);
    }

    .trust-item{
        border-right:0;
        border-bottom:1px solid var(--border);
    }

    .trust-item:nth-child(odd){
        border-right:1px solid var(--border);
    }

    .trust-item:nth-last-child(-n+2){
        border-bottom:0;
    }

    .categories{
        grid-template-columns:repeat(2,1fr);
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .product-image{
        height:190px;
    }

    .deal{
        grid-template-columns:1fr;
    }

    .deal-image{
        min-height:260px;
    }

    .deal-content{
        padding:30px;
    }

    .testimonials{
        grid-template-columns:1fr;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
    }

    .footer-grid>div:first-child{
        grid-column:1/-1;
    }

    .newsletter{
        padding:35px 20px;
    }
}

@media(max-width:450px){

    .header-right{
        gap:5px;
    }

    .logo-icon{
        width:32px;
        height:32px;
        border-radius:9px;
    }

    .logo{
        font-size:16px;
        gap:6px;
    }

    .header-btn,
    .mobile-menu-btn{
        width:35px;
        height:35px;
    }

    .hero h1{
        font-size:32px;
    }

    .hero p{
        font-size:14px;
    }

    .hero-actions .btn{
        width:100%;
    }

    .section{
        padding-top:50px;
    }

    .section-header{
        align-items:start;
    }

    .section-header h2{
        font-size:23px;
    }

    .product-tools{
        display:none;
    }

    .product-image{
        height:160px;
    }

    .product-info{
        padding:12px;
    }

    .product-title{
        font-size:12px;
    }

    .price{
        font-size:16px;
    }

    .add-cart{
        width:34px;
        height:34px;
    }

    .deal-content h2{
        font-size:28px;
    }

    .timer-box{
        width:58px;
    }

    .newsletter-form{
        flex-direction:column;
        background:transparent;
        gap:8px;
    }

    .newsletter-form input,
    .newsletter-form button{
        width:100%;
        border-radius:10px;
    }

    .footer-grid{
        grid-template-columns:1fr;
    }

    .footer-grid>div:first-child{
        grid-column:auto;
    }
}

</style>
</head>

<body>

<!-- ================= HEADER ================= -->

<header>

<div class="container top-header">

<button class="mobile-menu-btn" id="mobileMenuBtn">
    <i class="fa-solid fa-bars"></i>
</button>

<a href="#" class="logo">

    <div class="logo-icon">
        <i class="fa-solid fa-bag-shopping"></i>
    </div>

    Nexus<span>Shop</span>

</a>


<nav class="desktop-nav">

<a href="#" class="active">Home</a>
<a href="#categories">Categories</a>
<a href="#products">Shop</a>
<a href="#deals">Deals</a>
<a href="#reviews">Reviews</a>

</nav>


<div class="header-right">

<div class="search-box">

<i class="fa-solid fa-magnifying-glass"></i>

<input
id="searchInput"
type="search"
placeholder="Search products..."
>

</div>


<button class="header-btn" title="Account">

<i class="fa-regular fa-user"></i>

</button>


<button class="header-btn" title="Wishlist">

<i class="fa-regular fa-heart"></i>

</button>


<button class="header-btn" id="cartBtn" title="Shopping cart">

<i class="fa-solid fa-bag-shopping"></i>

<span class="cart-badge" id="cartCount">0</span>

</button>

</div>

</div>


<div class="container">

<nav class="mobile-nav" id="mobileNav">

<a href="#">Home</a>
<a href="#categories">Categories</a>
<a href="#products">Shop</a>
<a href="#deals">Deals</a>
<a href="#reviews">Reviews</a>

</nav>

</div>

</header>


<main>

<!-- ================= HERO ================= -->

<section class="hero container">

<div class="hero-content">

<div class="hero-tag">

<i class="fa-solid fa-sparkles"></i>

New season collection

</div>


<h1>

Shop smarter.<br>

Live <span>better.</span>

</h1>


<p>

Discover products you'll love, from the latest technology
to everyday essentials. Great prices, fast delivery and
effortless shopping.

</p>


<div class="hero-actions">

<a href="#products" class="btn btn-primary">

Shop Now

<i class="fa-solid fa-arrow-right"></i>

</a>


<a href="#deals" class="btn btn-light">

View Deals

</a>

</div>

</div>

</section>


<!-- ================= TRUST BAR ================= -->

<section class="container">

<div class="trust-bar">


<div class="trust-item">

<div class="trust-icon">
<i class="fa-solid fa-truck-fast"></i>
</div>

<div>

<strong>Free Shipping</strong>

<small>On orders over $50</small>

</div>

</div>


<div class="trust-item">

<div class="trust-icon">
<i class="fa-solid fa-shield-halved"></i>
</div>

<div>

<strong>Secure Payment</strong>

<small>100% protected checkout</small>

</div>

</div>


<div class="trust-item">

<div class="trust-icon">
<i class="fa-solid fa-rotate-left"></i>
</div>

<div>

<strong>Easy Returns</strong>

<small>30-day return policy</small>

</div>

</div>


<div class="trust-item">

<div class="trust-icon">
<i class="fa-solid fa-headset"></i>
</div>

<div>

<strong>24/7 Support</strong>

<small>We're here to help</small>

</div>

</div>

</div>

</section>


<!-- ================= CATEGORIES ================= -->

<section class="section container" id="categories">

<div class="section-header">

<div>

<h2>Shop by Category</h2>

<p>Find exactly what you're looking for.</p>

</div>


<a href="#products" class="view-all">

View all →

</a>

</div>


<div class="categories" id="categoriesGrid"></div>

</section>


<!-- ================= PRODUCTS ================= -->

<section class="section container" id="products">

<div class="section-header">

<div>

<h2>Popular Products</h2>

<p>Top picks loved by our customers.</p>

</div>


<div class="product-tools">

<button class="filter-btn active" data-filter="all">
All
</button>

<button class="filter-btn" data-filter="phones">
Tech
</button>

<button class="filter-btn" data-filter="accessories">
Accessories
</button>

</div>

</div>


<div class="products" id="productsGrid"></div>

</section>


<!-- ================= DEAL ================= -->

<section class="section container" id="deals">

<div class="section-header">

<div>

<h2>Deal of the Day</h2>

<p>Grab it before the offer disappears.</p>

</div>

</div>


<div class="deal">

<div class="deal-image"></div>


<div class="deal-content">

<div class="deal-label">

FLASH SALE · 17% OFF

</div>


<h2>MacBook Air M2</h2>


<p>

Thin, light and incredibly powerful.
Experience next-generation performance
with Apple's M2 chip.

</p>


<div class="timer">

<div class="timer-box">

<strong id="dealDays">00</strong>

<small>DAYS</small>

</div>


<div class="timer-box">

<strong id="dealHours">00</strong>

<small>HOURS</small>

</div>


<div class="timer-box">

<strong id="dealMinutes">00</strong>

<small>MINUTES</small>

</div>


<div class="timer-box">

<strong id="dealSeconds">00</strong>

<small>SECONDS</small>

</div>

</div>


<div class="deal-price">

<strong>$999</strong>

<del>$1,199</del>

</div>


<button class="btn btn-primary" id="buyDeal">

Add to Cart

<i class="fa-solid fa-cart-plus"></i>

</button>

</div>

</div>

</section>


<!-- ================= REVIEWS ================= -->

<section class="section container" id="reviews">

<div class="section-header">

<div>

<h2>Loved by shoppers</h2>

<p>See what our customers are saying.</p>

</div>

</div>


<div class="testimonials">


<div class="testimonial">

<div class="testimonial-stars">
★★★★★
</div>

<p>

"The ordering process was incredibly easy
and my package arrived earlier than expected.
Great experience!"

</p>


<div class="customer">

<img
src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
alt="Ava"
>

<div>

<strong>Ava Martin</strong>

<small>Verified customer</small>

</div>

</div>

</div>


<div class="testimonial">

<div class="testimonial-stars">
★★★★★
</div>

<p>

"Really clean website and checkout was
super simple. The product quality was
excellent too."

</p>


<div class="customer">

<img
src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
alt="Michael"
>

<div>

<strong>Michael Lee</strong>

<small>Verified customer</small>

</div>

</div>

</div>


<div class="testimonial">

<div class="testimonial-stars">
★★★★★
</div>

<p>

"Excellent selection and fast delivery.
NexusShop has become one of my favorite
places to shop."

</p>


<div class="customer">

<img
src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=100&q=80"
alt="Sophia"
>

<div>

<strong>Sophia Wilson</strong>

<small>Verified customer</small>

</div>

</div>

</div>

</div>

</section>


<!-- ================= NEWSLETTER ================= -->

<section class="container">

<div class="newsletter">

<h2>Get 10% off your first order</h2>

<p>

Subscribe to our newsletter for exclusive deals,
new arrivals and shopping inspiration.

</p>


<form class="newsletter-form" id="newsletterForm">

<input
id="newsletterEmail"
type="email"
placeholder="Enter your email address"
required
>

<button type="submit">

Subscribe

</button>

</form>


<div id="newsletterMsg"></div>

</div>

</section>

</main>


<!-- ================= FOOTER ================= -->

<footer>

<div class="container">

<div class="footer-grid">


<div>

<div class="footer-brand">

Nexus<span>Shop</span>

</div>


<p class="footer-description">

Your modern destination for quality products,
great prices and a simple shopping experience.

</p>


<div class="socials">

<a href="#" class="social">
<i class="fa-brands fa-facebook-f"></i>
</a>

<a href="#" class="social">
<i class="fa-brands fa-instagram"></i>
</a>

<a href="#" class="social">
<i class="fa-brands fa-x-twitter"></i>
</a>

<a href="#" class="social">
<i class="fa-brands fa-youtube"></i>
</a>

</div>

</div>


<div class="footer-column">

<h4>Shop</h4>

<a href="#products">All Products</a>
<a href="#categories">Categories</a>
<a href="#deals">Deals</a>
<a href="#">New Arrivals</a>

</div>


<div class="footer-column">

<h4>Help</h4>

<a href="#">Customer Support</a>
<a href="#">Shipping</a>
<a href="#">Returns</a>
<a href="#">FAQs</a>

</div>


<div class="footer-column">

<h4>Company</h4>

<a href="#">About Us</a>
<a href="#">Careers</a>
<a href="#">Contact</a>
<a href="#">Privacy Policy</a>

</div>

</div>


<div class="copyright">

© <span id="year"></span> NexusShop.
All rights reserved.

</div>

</div>

</footer>


<!-- ================= TOAST ================= -->

<div class="toast" id="toast">

<i class="fa-solid fa-circle-check"></i>

<span id="toastMessage">
Added to cart
</span>

</div>


<script>

/* ================= DATA ================= */

const CATEGORIES = [

{
id:"phones",
name:"Smartphones",
icon:"fa-mobile-screen-button",
count:"24 products"
},

{
id:"laptops",
name:"Laptops",
icon:"fa-laptop",
count:"18 products"
},

{
id:"clothing",
name:"Clothing",
icon:"fa-shirt",
count:"42 products"
},

{
id:"gadgets",
name:"Gadgets",
icon:"fa-headphones",
count:"31 products"
},

{
id:"footwear",
name:"Footwear",
icon:"fa-shoe-prints",
count:"27 products"
},

{
id:"accessories",
name:"Accessories",
icon:"fa-watch",
count:"36 products"
}

];


const PRODUCTS = [

{
id:1,
title:"iPhone 14 Pro Max",
category:"phones",
categoryName:"Smartphones",
price:1099,
oldPrice:1199,
rating:5,
reviews:128,
badge:"NEW",
img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
},

{
id:2,
title:'MacBook Pro 14"',
category:"laptops",
categoryName:"Laptops",
price:1999,
rating:4,
reviews:86,
badge:"POPULAR",
img:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
},

{
id:3,
title:"Apple Watch Series 8",
category:"accessories",
categoryName:"Accessories",
price:349,
oldPrice:399,
rating:5,
reviews:214,
badge:"-25%",
img:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
},

{
id:4,
title:"Nike Air Max 270",
category:"footwear",
categoryName:"Footwear",
price:150,
rating:4,
reviews:53,
img:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
},

{
id:5,
title:"Sony A7 IV Camera",
category:"gadgets",
categoryName:"Gadgets",
price:2499,
rating:5,
reviews:42,
badge:"BEST SELLER",
img:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
},

{
id:6,
title:"Premium Fragrance",
category:"accessories",
categoryName:"Accessories",
price:120,
rating:5,
reviews:189,
img:"https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
},

{
id:7,
title:"Travel Backpack",
category:"accessories",
categoryName:"Accessories",
price:79,
oldPrice:99,
rating:4,
reviews:67,
badge:"SALE",
img:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
},

{
id:8,
title:"Sony WH-1000XM5",
category:"gadgets",
categoryName:"Gadgets",
price:399,
rating:5,
reviews:156,
badge:"TOP RATED",
img:"https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=700&q=85"
}

];


/* ================= ELEMENTS ================= */

const categoriesGrid =
document.getElementById("categoriesGrid");

const productsGrid =
document.getElementById("productsGrid");

const searchInput =
document.getElementById("searchInput");

const cartCount =
document.getElementById("cartCount");

const toast =
document.getElementById("toast");

const toastMessage =
document.getElementById("toastMessage");

let cart = 0;


/* ================= CATEGORIES ================= */

function renderCategories(){

categoriesGrid.innerHTML="";

CATEGORIES.forEach(category=>{

const card=document.createElement("div");

card.className="category-card";

card.innerHTML=`

<div class="category-icon">

<i class="fa-solid ${category.icon}"></i>

</div>

<h3>${category.name}</h3>

<p>${category.count}</p>

`;

card.addEventListener("click",()=>{

renderProducts(
PRODUCTS.filter(
product=>product.category===category.id
)
);

document
.getElementById("products")
.scrollIntoView({
behavior:"smooth"
});

});

categoriesGrid.appendChild(card);

});

}


/* ================= PRODUCTS ================= */

function renderProducts(products){

productsGrid.innerHTML="";


if(!products.length){

productsGrid.innerHTML=`

<div style="
grid-column:1/-1;
padding:50px;
text-align:center;
color:#64748b;
">

<i
class="fa-solid fa-box-open"
style="font-size:40px;margin-bottom:12px">
</i>

<h3>No products found</h3>

<p>
Try another search or category.
</p>

</div>

`;

return;

}


products.forEach(product=>{

const card=document.createElement("article");

card.className="product-card";

card.innerHTML=`

<div class="product-image">

${
product.badge
?
`
<div class="product-badge">
${product.badge}
</div>
`
:""
}

<button
class="product-wishlist"
aria-label="Add to wishlist"
>

<i class="fa-regular fa-heart"></i>

</button>


<img
src="${product.img}"
alt="${product.title}"
loading="lazy"
>

</div>


<div class="product-info">

<div class="product-category">
${product.categoryName}
</div>


<div class="product-title">
${product.title}
</div>


<div class="rating">

${"★".repeat(product.rating)}

<span>
(${product.reviews})
</span>

</div>


<div class="price-row">

<div>

<span class="price">

$${product.price.toLocaleString()}

</span>


${
product.oldPrice
?
`
<span class="old-price">
$${product.oldPrice.toLocaleString()}
</span>
`
:""
}

</div>


<button
class="add-cart"
data-id="${product.id}"
aria-label="Add to cart"
>

<i class="fa-solid fa-plus"></i>

</button>

</div>

</div>

`;


productsGrid.appendChild(card);

});

attachProductEvents();

}


/* ================= PRODUCT EVENTS ================= */

function attachProductEvents(){

document
.querySelectorAll(".add-cart")
.forEach(button=>{

button.addEventListener("click",()=>{

const productId=
Number(button.dataset.id);

const product=
PRODUCTS.find(
p=>p.id===productId
);

addToCart(product);

});

});


document
.querySelectorAll(".product-wishlist")
.forEach(button=>{

button.addEventListener("click",()=>{

button.classList.toggle("active");

const icon=
button.querySelector("i");

icon.classList.toggle(
"fa-regular"
);

icon.classList.toggle(
"fa-solid"
);

showToast(
button.classList.contains("active")
?
"Added to wishlist"
:
"Removed from wishlist"
);

});

});

}


/* ================= CART ================= */

function addToCart(product){

if(!product)return;

cart++;

cartCount.textContent=cart;

showToast(
`${product.title} added to cart`
);

}


/* ================= TOAST ================= */

let toastTimer;

function showToast(message){

toastMessage.textContent=message;

toast.classList.add("show");

clearTimeout(toastTimer);

toastTimer=setTimeout(()=>{

toast.classList.remove("show");

},2200);

}


/* ================= SEARCH ================= */

searchInput.addEventListener(
"input",
function(){

const query=
this.value
.trim()
.toLowerCase();


if(!query){

renderProducts(PRODUCTS);

return;

}


const results=
PRODUCTS.filter(product=>

product.title
.toLowerCase()
.includes(query)

||

product.categoryName
.toLowerCase()
.includes(query)

);


renderProducts(results);

}
);


/* ================= FILTER ================= */

document
.querySelectorAll(".filter-btn")
.forEach(button=>{

button.addEventListener("click",()=>{

document
.querySelectorAll(".filter-btn")
.forEach(btn=>
btn.classList.remove("active")
);

button.classList.add("active");


const filter=
button.dataset.filter;


if(filter==="all"){

renderProducts(PRODUCTS);

}

else if(filter==="phones"){

renderProducts(

PRODUCTS.filter(
p=>
p.category==="phones" ||
p.category==="laptops" ||
p.category==="gadgets"
)

);

}

else{

renderProducts(

PRODUCTS.filter(
p=>p.category===filter
)

);

}

});

});


/* ================= MOBILE MENU ================= */

const mobileMenuBtn=
document.getElementById("mobileMenuBtn");

const mobileNav=
document.getElementById("mobileNav");


mobileMenuBtn.addEventListener(
"click",
()=>{

mobileNav.classList.toggle("open");

const icon=
mobileMenuBtn.querySelector("i");

icon.classList.toggle(
"fa-bars"
);

icon.classList.toggle(
"fa-xmark"
);

}
);


mobileNav
.querySelectorAll("a")
.forEach(link=>{

link.addEventListener(
"click",
()=>{

mobileNav.classList.remove("open");

const icon=
mobileMenuBtn.querySelector("i");

icon.classList.add("fa-bars");

icon.classList.remove("fa-xmark");

}
);

});


/* ================= NEWSLETTER ================= */

document
.getElementById("newsletterForm")
.addEventListener("submit",event=>{

event.preventDefault();

const email=
document
.getElementById("newsletterEmail")
.value
.trim();

const message=
document.getElementById(
"newsletterMsg"
);


if(!email.includes("@")){

message.style.color="#fca5a5";

message.textContent=
"Please enter a valid email address.";

return;

}


message.style.color="#86efac";

message.textContent=
"You're subscribed! Your 10% discount is on the way.";

event.target.reset();

});


/* ================= DEAL TIMER ================= */

const dealTarget=
new Date().getTime()
+
(
1*24*60*60*1000
+
6*60*60*1000
+
36*60*1000
);


function updateTimer(){

const now=
new Date().getTime();

const distance=
dealTarget-now;


if(distance<=0){

document.getElementById(
"dealDays"
).textContent="00";

return;

}


const days=
Math.floor(
distance/
(1000*60*60*24)
);


const hours=
Math.floor(
(
distance%
(1000*60*60*24)
)/
(1000*60*60)
);


const minutes=
Math.floor(
(
distance%
(1000*60*60)
)/
(1000*60)
);


const seconds=
Math.floor(
(
distance%
(1000*60)
)/
1000
);


document.getElementById(
"dealDays"
).textContent=
String(days).padStart(2,"0");


document.getElementById(
"dealHours"
).textContent=
String(hours).padStart(2,"0");


document.getElementById(
"dealMinutes"
).textContent=
String(minutes).padStart(2,"0");


document.getElementById(
"dealSeconds"
).textContent=
String(seconds).padStart(2,"0");

}


updateTimer();

setInterval(updateTimer,1000);


/* ================= DEAL BUTTON ================= */

document
.getElementById("buyDeal")
.addEventListener("click",()=>{

cart++;

cartCount.textContent=cart;

showToast(
"MacBook Air M2 added to cart"
);

});


/* ================= CART ================= */

document
.getElementById("cartBtn")
.addEventListener("click",()=>{

if(cart===0){

showToast(
"Your cart is empty"
);

}

else{

showToast(
`You have ${cart} item${cart>1?"s":""} in your cart`
);

}

});


/* ================= YEAR ================= */

document.getElementById("year")
.textContent=
new Date().getFullYear();


/* ================= INIT ================= */

renderCategories();

renderProducts(PRODUCTS);

</script>

</body>
</html>
