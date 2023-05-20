{% if page.comments and config.gitalk.enable %}

{% endif %}

<!-- hitokoto -->

<strong>
<div id="hitokoto_wrap">
    <div id="hitokoto_text">&nbsp;&nbsp;&nbsp;&nbsp;抬头望天，低头走路。</div>
    <div id="hitokoto_from">——无名</div>
</div>
</strong>

<script>
    let hitokoto_wrap = document.getElementById("hitokoto_wrap");
    let hitokoto_text = document.getElementById('hitokoto_text')
    let hitokoto_from = document.getElementById('hitokoto_from');
    async function loadHitokoto(){
        // Fetch API
        // 调用一言接口 根据需求配置参数 默认即可
        // fetch('https://v1.hitokoto.cn?min_length=12')
        fetch('https://international.v1.hitokoto.cn?c=k&min_length=12')
        .then(response => response.json())
        .then(data => {
            hitokoto_text.innerText = '\xa0\xa0\xa0\xa0\xa0\xa0\xa0' + data.hitokoto;
            hitokoto_from.innerText = "——" + data.from + '\xa0';
        })
        .catch(console.error)
    }
    loadHitokoto();

    hitokoto_wrap.addEventListener("click", async function(e){
        loadHitokoto();
        
        // 复制一言内容到剪贴板
        // 去除字符串前后空格
        let content = (hitokoto_text.innerText + hitokoto_from.innerText).trim()
        // Clipboard API
        navigator.clipboard.writeText(content)
        .then(console.log(content))
        .catch(console.error)
    });
</script>

<script>
	// 添加鼠标点击爱心特效
    !function(e, t, a) {
        function r() {
            for (var e = 0; e < s.length; e++) s[e].alpha <= 0 ? (t.body.removeChild(s[e].el), s.splice(e, 1)) : (s[e].y--, s[e].scale += .004, s[e].alpha -= .013, s[e].el.style.cssText = "left:" + s[e].x + "px;top:" + s[e].y + "px;opacity:" + s[e].alpha + ";transform:scale(" + s[e].scale + "," + s[e].scale + ") rotate(45deg);background:" + s[e].color + ";z-index:99999");
            requestAnimationFrame(r)
        }
        function n() {
            var t = "function" == typeof e.onclick && e.onclick;
            // 绑定点击事件到一言窗口
            hitokoto_wrap.addEventListener("click", function(e) {
                t && t(),
                    o(e)
            });
        }
        function c() {
            return "rgb(" + ~~ (255 * Math.random()) + "," + ~~ (255 * Math.random()) + "," + ~~ (255 * Math.random()) + ")"
        }
        function o(e) {
            var a = t.createElement("div");
            a.className = "heart",
                s.push({
                    el: a,
                    x: e.clientX - 5,
                    y: e.clientY - 5,
                    scale: 1,
                    alpha: 1,
                    color: c()
                }),
                t.body.appendChild(a)
        }
        function i(e) {
            var a = t.createElement("style");
            a.type = "text/css";
            try {
                a.appendChild(t.createTextNode(e))
            } catch(t) {
                a.styleSheet.cssText = e
            }
            t.getElementsByTagName("head")[0].appendChild(a)
        }

        var s = [];
        e.requestAnimationFrame = e.requestAnimationFrame || e.webkitRequestAnimationFrame || e.mozRequestAnimationFrame || e.oRequestAnimationFrame || e.msRequestAnimationFrame ||
            function(e) {
                setTimeout(e, 1e3 / 60)
            },
            i(".heart{width: 10px;height: 10px;position: fixed;background: #f00;transform: rotate(45deg);-webkit-transform: rotate(45deg);-moz-transform: rotate(45deg);}.heart:after,.heart:before{content: '';width: inherit;height: inherit;background: inherit;border-radius: 50%;-webkit-border-radius: 50%;-moz-border-radius: 50%;position: fixed;}.heart:after{top: -5px;}.heart:before{left: -5px;}"),
            n(),
            r()
    } (window, document);
</script>
 
<!-- 地球1 -->
<!--
<script type="text/javascript" id="clstr_globe" src="//clustrmaps.com/globe.js?d=voaBwFatK1ngdNK_tDqh9B-2QCKb9YsNIT7wV1rtiZI"></script>
-->

<!-- 地球2 -->
<!-- 
<script type="text/javascript" src="//rf.revolvermaps.com/0/0/8.js?i=53b96nvlw2y&amp;m=0&amp;c=00fff6&amp;cr1=007eff&amp;f=arial&amp;l=33&amp;s=170" async="async"></script>
-->

