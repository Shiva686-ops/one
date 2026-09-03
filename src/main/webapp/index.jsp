<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NarsimhaNagisettiAnnaShop</title>

<style>
*{box-sizing:border-box;margin:0;padding:0}
body{
    font-family:Arial,sans-serif;
    background:#f7f8fa;
    color:#222
}
header{
    background:#fff;
    padding:18px 7%;
    display:flex;
    align-items:center;
    justify-content:space-between;
    box-shadow:0 2px 10px #ddd;
    position:sticky;
    top:0;
    z-index:10
}
.logo{font-size:24px;font-weight:bold;color:#111}
.logo span{color:#ff4d4d}
nav a{
    text-decoration:none;
    color:#444;
    margin:0 12px;
    font-size:14px
}
nav a:hover{color:#ff4d4d}
.search{
    padding:10px 15px;
    border:1px solid #ddd;
    border-radius:25px;
    width:220px
}
.cart{
    background:#111;
    color:white;
    padding:10px 16px;
    border-radius:22px;
    border:0;
    cursor:pointer
}
.hero{
    margin:30px 7%;
    min-height:380px;
    border-radius:25px;
    background:linear-gradient(90deg,#111c,#1112),
    url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80")
    center/cover;
    display:flex;
    align-items:center;
    padding:50px;
    color:white
}
.hero h1{font-size:48px;max-width:600px;margin-bottom:15px}
.hero p{max-width:500px;color:#eee;margin-bottom:25px}
.btn{
    padding:13px 24px;
    border:0;
    border-radius:25px;
    cursor:pointer;
    font-weight:bold
}
.primary{background:#ff4d4d;color:white}
section{padding:35px 7%}
.title{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:20px
}
.categories{
    display:grid;
    grid-template-columns:repeat(6,1fr);
    gap:15px
}
.category{
    background:white;
    padding:25px 10px;
    text-align:center;
    border-radius:15px;
    cursor:pointer;
    transition:.2s
}
.category:hover{
    background:#ff4d4d;
    color:white;
    transform:translateY(-4px)
}
.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:20px
}
.card{
    background:white;
    border-radius:18px;
    overflow:hidden;
    box-shadow:0 3px 15px #ddd;
    transition:.2s
}
.card:hover{transform:translateY(-5px)}
.card img{
    width:100%;
    height:220px;
    object-fit:cover
}
.info{padding:18px}
.info h3{margin-bottom:8px}
.price{
    font-size:20px;
    font-weight:bold;
    margin:12px 0
}
.old{
    text-decoration:line-through;
    color:#999;
    font-size:13px;
    margin-left:5px
}
.add{
    width:100%;
    padding:11px;
    border:0;
    background:#111;
    color:white;
    border-radius:10px;
    cursor:pointer
}
.sale{
    margin:30px 7%;
    padding:40px;
    border-radius:20px;
    background:#111;
    color:white;
    display:flex;
    justify-content:space-between;
    align-items:center
}
.sale h2{font-size:30px}
footer{
    background:#111;
    color:#aaa;
    text-align:center;
    padding:30px
}
@media(max-width:900px){
    nav{display:none}
    .categories{grid-template-columns:repeat(3,1fr)}
    .products{grid-template-columns:repeat(2,1fr)}
}
@media(max-width:600px){
    header{padding:15px}
    .search{display:none}
    .hero{
        margin:15px;
        padding:30px;
        min-height:400px
    }
    .hero h1{font-size:34px}
    section{padding:25px 15px}
    .categories{grid-template-columns:repeat(2,1fr)}
    .products{grid-template-columns:1fr}
    .sale{
        margin:15px;
        flex-direction:column;
        gap:20px;
        text-align:center
    }
}
</style>
</head>

<body>

<header>
    <div class="logo">Nexus<span>Shop</span></div>

    <nav>
        <a href="#">Home</a>
        <a href="#categories">Categories</a>
        <a href="#products">Products</a>
        <a href="#deals">Deals</a>
    </nav>

    <input class="search" id="search" placeholder="Search products...">

    <button class="cart">
        🛒 Cart <span id="count">0</span>
    </button>
</header>

<div class="hero">
    <div>
        <h1>Everything you need. One simple shop.</h1>
        <p>
            Discover trending electronics, fashion and accessories
            at prices you'll love.
        </p>
        <button class="btn primary" onclick="location.href='#products'">
            Shop Now →
        </button>
    </div>
</div>

<section id="categories">
    <div class="title">
        <h2>Shop by Category</h2>
    </div>

    <div class="categories">
        <div class="category">📱<br><b>Phones</b></div>
        <div class="category">💻<br><b>Laptops</b></div>
        <div class="category">👕<br><b>Fashion</b></div>
        <div class="category">🎧<br><b>Audio</b></div>
        <div class="category">👟<br><b>Footwear</b></div>
        <div class="category">⌚<br><b>Accessories</b></div>
    </div>
</section>

<section id="products">

    <div class="title">
        <div>
            <h2>Trending Products</h2>
            <small>Popular products picked for you</small>
        </div>
    </div>

    <div class="products" id="productList">

        <div class="card" data-name="iphone 14 pro">
            <img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80">
            <div class="info">
                <h3>iPhone 14 Pro</h3>
                <p>⭐⭐⭐⭐⭐</p>
                <div class="price">$999</div>
                <button class="add" onclick="addCart()">Add to Cart</button>
            </div>
        </div>

        <div class="card" data-name="macbook pro">
            <img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80">
            <div class="info">
                <h3>MacBook Pro</h3>
                <p>⭐⭐⭐⭐⭐</p>
                <div class="price">$1,899</div>
                <button class="add" onclick="addCart()">Add to Cart</button>
            </div>
        </div>

        <div class="card" data-name="apple watch">
            <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80">
            <div class="info">
                <h3>Apple Watch</h3>
                <p>⭐⭐⭐⭐</p>
                <div class="price">$299 <span class="old">$399</span></div>
                <button class="add" onclick="addCart()">Add to Cart</button>
            </div>
        </div>

        <div class="card" data-name="sony headphones">
            <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80">
            <div class="info">
                <h3>Sony Headphones</h3>
                <p>⭐⭐⭐⭐⭐</p>
                <div class="price">$249</div>
                <button class="add" onclick="addCart()">Add to Cart</button>
            </div>
        </div>

    </div>
</section>

<div class="sale" id="deals">
    <div>
        <h2>🔥 Flash Sale</h2>
        <p>Up to 40% off selected products</p>
    </div>
    <button class="btn primary" onclick="location.href='#products'">
        View Deals
    </button>
</div>

<footer>
    <h3>NexusShop</h3>
    <p>Simple shopping. Better experience.</p>
    <br>
    © 2026 NexusShop
</footer>

<script>
let count=0;

function addCart(){
    count++;
    document.getElementById("count").innerText=count;
}

document.getElementById("search").addEventListener("input",function(){
    let value=this.value.toLowerCase();

    document.querySelectorAll(".card").forEach(card=>{
        card.style.display=
            card.dataset.name.includes(value)
            ? "block"
            : "none";
    });
});
</script>

</body>
</html>
