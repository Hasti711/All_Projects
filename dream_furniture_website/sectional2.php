<?php
include 'conn/conn.php';
include 'inc/header.php';
?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, inital-scale-1, user-scale=no">
<title>Sectional Sofa</title>

<link href="magic360\magic360.css" rel="stylesheet" type="text/css" media="screen"/>
<script src="magic360\magic360.js" type="text/javascript"></script>

<style type="text/css">
input[type="radio"]
    {
        position: absolute;
        opacity: 0;
        width: 0;
        height: 0;
    }
    input[type="radio"] + img
    {
        cursor: -webkit-grabbing;
        cursor: grabbing;
        width: 100px;
    }
    /*input[type="radio"]: checked + img 
    {
    }*/
    html { position: relative; min-height: 100%; }
    body { position: absolute; left:0; right: 0; min-height: 100%; background:#fff; margin:0; padding:0; font-size: 100%; }
    body, td {
        font-family: 'Helvetica Neue', Helvetica, 'Lucida Grande', Tahoma, Arial, Verdana, sans-serif;
        line-height: 1.5em;
        -webkit-text-rendering: geometricPrecision;
        text-rendering: geometricPrecision;
    }
    h1 { font-size:1.5em; font-weight:normal; color:#555; }
    h2 { font-size:1.3em; font-weight:normal; color:#555; }
    h2.caption { margin: 2.5em 0 0;}
    h3 { font-size:1.1em; font-weight: normal; color:#555; }
    h3.pad { margin: 2em 0 1em; }
    h4 { font-size: 1em; font-weight:normal; color:#555; }
    p.pad { margin-top: 1.5em; }
    a { outline: none;}


    .cfg-btn {
        background-color: rgb(55, 181, 114);
        color: #fff;
        border: 0;
        box-shadow: 0 0 1px 0px rgba(0,0,0,0.3);
        outline:0;
        cursor: pointer;
        width: 200px;
        padding: 10px;
        font-size: 1em;
        position: relative;
        display: inline-block;
        margin: 10px auto;
    }
    .cfg-btn:hover:not([disabled]) {
        background-color: rgb(37, 215, 120);
    }
    .mobile-magic .cfg-btn:hover:not([disabled]) { background: rgb(55, 181, 114); }
    .cfg-btn[disabled] { opacity: .5; color: #808080; background: #ddd; }

    .cfg-btn.btn-preview,
    .cfg-btn.btn-preview:active,
    .cfg-btn.btn-preview:focus {
        font-size: 1em;
        position: relative;
        display: block;
        margin: 10px auto;
    }

    .cfg-btn,
    .preview,
    .app-figure,
    .api-controls,
    .wizard-settings,
    .wizard-settings .inner,
    .wizard-settings .footer,
    .wizard-settings input,
    .wizard-settings select {
        -webkit-box-sizing: border-box;
           -moz-box-sizing: border-box;
                box-sizing: border-box;
    }
    .preview,
    .wizard-settings {
        padding: 10px;
        border: 0;
        min-height: 1px;
    }
    .preview {
        position: relative;
    }

    .api-controls {
        text-align: center;
    }
    .api-controls button,
    .api-controls button:active,
    .api-controls button:focus {
         width: 100px;
         font-size: .7em;
         white-space: nowrap;
    }
    .api-controls .sep { content: ''; display: table; }
    .api-controls .sep-sm { content: ''; display: none; }

    .app-figure {
        width: 80% !important;
        margin: 5px auto; border: 0px solid red;
        padding: 0px;
        position: relative;
        text-align: center;
    }
    .selectors { margin-top: 10px; }

    .app-code-sample {
        max-width: 80%;
        margin: 80px auto 0;
        text-align: center;
        position: relative;
    }
    .app-code-sample input[type="radio"] {
        display: none;
    }
    .app-code-sample label {
        display: inline-block;
        padding: 2px 12px;
        margin: 0;
        font-size: .8em;
        text-decoration: none;
        cursor: pointer;
        color: #666;
        border: 1px solid rgba(136, 136, 136, 0.5);
        background-color: transparent;
    }
    .app-code-sample label:hover {
        color: #fff;
        background-color: rgb(253, 154, 30);
        border-color: rgb(253, 154, 30);
    }
    .app-code-sample input[type="radio"]:checked+label {
        color: #fff;
        background-color: rgb(110, 110, 110) !important;
        border-color: rgba(110, 110, 110, 0.7) !important;
    }
    .app-code-sample label:first-of-type {
        border-radius: 4px 0 0 4px;
        border-right-color: transparent;
    }
    .app-code-sample label:last-of-type {
        border-radius: 0 4px 4px 0;
        border-left-color: transparent;
    }

    .app-code-sample .app-code-holder {
        padding: 0;
        position: relative;
        border: 1px solid #eee;
        border-radius: 0px;
        background-color: #fafafa;
        margin: 15px 0;
    }
    .app-code-sample .app-code-holder > div {
        display: none;
    }
    .app-code-sample .app-code-holder pre {
        text-align: left;
        white-space: pre-line;
        border: 0px solid #eee;
        border-radius: 0px;
        background-color: transparent;
        padding: 25px 50px 25px 25px;
        margin: 0;
        min-height: 25px;
    }
    .app-code-sample input[type="radio"]:nth-of-type(1):checked ~ .app-code-holder > div:nth-of-type(1) {
        display: block;
    }
    .app-code-sample input[type="radio"]:nth-of-type(2):checked ~ .app-code-holder > div:nth-of-type(2) {
        display: block;
    }

    .app-code-sample .app-code-holder .cfg-btn-copy {
        display: none;
        z-index: -1;
        position: absolute;
        top:10px; right: 10px;
        width: 44px;
        font-size: .65em;
        white-space: nowrap;
        margin: 0;
        padding: 4px;
    }
    .copy-msg {
        font: normal 11px/1.2em 'Helvetica Neue', Helvetica, 'Lucida Grande', 'Lucida Sans Unicode', Verdana, Arial, sans-serif;
        color: #2a4d14;
        border: 1px solid #2a4d14;
        border-radius: 4px;
        position: absolute;
        top: 8px;
        left: 0;
        right: 0;
        width: 200px;
        max-width: 70%;
        padding: 4px;
        margin: 0px auto;
        text-align: center;
    }
    .copy-msg-failed {
        color: #b80c09;
        border-color: #b80c09;
        width: 430px;
    }
    .mobile-magic .app-code-sample .cfg-btn-copy { display: none; }
    #code-to-copy { position: absolute; width: 0; height: 0; top: -10000px; }
    .lt-ie9-magic .app-code-sample { display: none; }

    .wizard-settings {
        background-color: #4f4f4f;
        color: #a5a5a5;
        position: absolute;
        right: 0;
        width: 340px;
    }
    .wizard-settings .inner {
        width: 100%;
        margin-bottom: 30px;
    }
    .wizard-settings .footer {
        color: #c7d59f;
        font-size: .75em;
        width: 100%;
        position: relative;
        vertical-align: bottom;
        text-align: center;
        padding: 6px;
        margin-top: 10px;
    }
    .wizard-settings .footer a { color: inherit; text-decoration: none; }
    .wizard-settings .footer a:hover { text-decoration: underline; }

    .wizard-settings a { color: #cc9933; }
    .wizard-settings a:hover { color: #dfb363; }
    .wizard-settings table > tbody > tr > td { vertical-align: top; }
    .wizard-settings table { min-width: 300px; max-width: 100%; font-size: .8em; margin: 0 auto; }
    .wizard-settings table caption { font-size: 1.5em; padding: 16px 8px; }
    .wizard-settings table td { padding: 4px 8px; }
    .wizard-settings table td:first-child { white-space: nowrap; }
    .wizard-settings table td:nth-child(2) { text-align: left; }
    .wizard-settings table td .values {
        color: #a08794;
        font-size: 0.8em;
        line-height: 1.3em;
        display: block;
        max-width: 170px;
        padding-top: 2px;
    }
    .wizard-settings table td .values:before { content: ''; display: block; }

    .wizard-settings input,
    .wizard-settings select {
        width: 170px;
    }
    .wizard-settings input {
        padding: 0px 4px;
    }
    .wizard-settings input[disabled] {
        color: #808080;
        background: #a7a7a7;
        border: 1px solid #a7a7a7;
    }

    .preview { width: 70%; float: left; }
    @media (min-width: 0px) {
        .preview { width: 100%; float: none; }
    }
    @media (min-width: 1024px) {
        .preview { width: calc(100% - 340px); }
        .wizard-settings { top: 0; min-height: 100%; }
        .wizard-settings .inner { margin-top: 60px; }
        .wizard-settings .footer { position: absolute; bottom: 0; left: 0; }
        .wizard-settings .settings-controls {
            position: fixed;
            top: 0; right: 0;
            width: 340px;
            padding: 10px 0 0;
            text-align: center;
            background-color: inherit;
        }
    }
    @media screen and (max-width: 1023px) {
        .app-figure { width: 98% !important; margin: 50px 0; padding: 0; }
        .app-code-sample { display: none; }
        .wizard-settings { width: 100%; }
    }
    @media screen and (max-width: 600px) {
        .api-controls button,
        .api-controls button:active,
        .api-controls button:focus {
            width: 96px;
        }
    }
    @media screen and (min-width: 435px) and (max-width: 767px) {
        .api-controls .sep { display: none; }
        .api-controls .sep-sm { display: table; }
    }
    @media screen and (min-width: 768px) {
        .api-controls .sep { display: table; }
        .api-controls .sep-sm { display: none; }
    }
    @media screen and (min-width: 1600px) {
        .preview { padding: 10px 160px; }
    }
    input[type="radio"]
    {
        position: absolute;
        opacity: 0;
        width: 0;
        height: 0;
    }
    input[type="radio"] + img
    {
        cursor: -webkit-grabbing;
        cursor: grabbing;
        width: 100px;
    }
    input[type="radio"]: checked + img 
    {

    }
</style>
<script>
    var Magic360Options = {};
    Magic360Options = {
        onready: function () {
            console.log('onready', arguments[0]);
        },
        onstart: function () {
            console.log('onstart', arguments[0]);
        },
        onstop: function () {
            console.log('onstop', arguments[0]);
        },
        onzoomin: function () {
            console.log('onzoomin', arguments[0]);
        },
        onzoomout: function () {
            console.log('onzoomout', arguments[0]);
        },
        onspin: function () {
            console.log('onspin', arguments[0]);
        },
    };

    function isDefaultOption(o) {
        return magicJS.$A(magicJS.$(o).byTag('option')).filter(function(opt){
            return opt.selected && opt.defaultSelected;
        }).length > 0;
    }

    function toOptionValue(v) {
        if ( /^(true|false)$/.test(v) ) {
            return 'true' === v;
        }
        if ( /^[0-9]{1,}$/i.test(v) ) {
            return parseInt(v,10);
        }
        return v;
    }

    function makeOptions(optType) {
        var  value = null, isDefault = true, newParams = Array(), newParamsS = '', options = {};
        magicJS.$(magicJS.$A(magicJS.$(optType).getElementsByTagName("INPUT"))
            .concat(magicJS.$A(magicJS.$(optType).getElementsByTagName('SELECT'))))
            .forEach(function(param){
                value = ('checkbox'==param.type) ? param.checked.toString() : param.value;

                isDefault = ('checkbox'==param.type) ? value == param.defaultChecked.toString() :
                    ('SELECT'==param.tagName) ? isDefaultOption(param) : value == param.defaultValue;

                if ( null !== value && !isDefault) {
                    options[param.name] = toOptionValue(value);
                }
        });
        return options;
    }

    function updateScriptCode() {
        var code = '&lt;script&gt;\nvar Magic360Options = ';
        code += JSON.stringify(Magic360Options, null, 2).replace(/\"(\w+)\":/g,"$1:")+';';
        code += '\n&lt;/script&gt;';

        magicJS.$('app-code-sample-script').changeContent(code);
    }

    function updateInlineCode() {
        var code = '&lt;div class="Magic360" data-options="';
        code += JSON.stringify(Magic360Options).replace(/\"([-\w]+)\":(?:\"([^"]+)\"|([^,}]+))(,)?/g, "$1: $2$3; ").replace(/^\{(.*)\}$/,"$1").replace(/\s*$/,'');
        code += '"&gt;';

        magicJS.$('app-code-sample-inline').changeContent(code);
    }

    function applySettings() {
        Magic360.stop('spin-1');
        Magic360Options = makeOptions('params');
        Magic360.start('spin-1');
        updateScriptCode();
        updateInlineCode();
        try {
            prettyPrint();
        } catch(e) {}
    }

    function copyToClipboard(src) {
        var
            copyNode,
            range, success;

        if (!isCopySupported()) {
            disableCopy();
            return;
        }
        copyNode = document.getElementById('code-to-copy');
        copyNode.innerHTML = document.getElementById(src).innerHTML;

        range = document.createRange();
        range.selectNode(copyNode);
        window.getSelection().addRange(range);

        try {
            success = document.execCommand('copy');
        } catch(err) {
            success = false;
        }
        window.getSelection().removeAllRanges();
        if (!success) {
            disableCopy();
        } else {
            new magicJS.Message('Settings code copied to clipboard.', 3000,
                document.querySelector('.app-code-holder'), 'copy-msg');
        }
    }

    function disableCopy() {
        magicJS.$A(document.querySelectorAll('.cfg-btn-copy')).forEach(function(node) {
            node.disabled = true;
        });
        new magicJS.Message('Sorry, cannot copy settings code to clipboard. Please select and copy code manually.', 3000,
            document.querySelector('.app-code-holder'), 'copy-msg copy-msg-failed');
    }

    function isCopySupported() {
        if ( !window.getSelection || !document.createRange || !document.queryCommandSupported ) { return false; }
        return document.queryCommandSupported('copy');
    }
</script>
</head>
<body><form action="<?php $_PHP_SELF ?>" method="post">
<center><?php echo "<h3>Jason Wu<br></h3>"; echo color(); ?><br>
<input type="submit" name="change" value="submit"></center>
</form>
<center><form action="proc/addp.php"><button type="submit">Add to Bucket</button></form>
<br><br><pre class="ds">
    <h3>JASON WU</h3><h5>
Seat comfort:
Soft and supportive seat with extra soft down back
Seat height (floor to the highest point of the seat cushion):
Medium height at 19”
Seat depth (front of the seat cushion to front of the back cushion):
Medium depth at 
For his first furniture collection, fashion designer Jason Wu wanted to create a new classic. He drew inspiration from iconic mid-century modern designs, but updated them with his fashion-forward<br> sensibility.The result has a solid exposed wood frame with proportions that feel right in today's home.

Whether you choose oiled walnut or matte black, the wood frame features graceful lines, like a brass-capped leg and a pitched back. The pitch of the back was also designed with comfort in mind.<br> Its precise dimensions, along with the seat and arm height, were set to feel universally comfortable for all sitters. The seat and back cushions are reversible,<br> so you can rotate them for long-lasting beauty.</h5>

</pre>
<br><br>
<br><br><h3>Also Available</h3><br><br>
<a href="jo.php" class="lc">Ottoman <br><img src="images/Home/Living/Sofa/Ottoman/o1/o1-01-01.png"></a></center>
</body>
</html>
<?php
function color()
{
    include 'conn/conn.php';
    if(!isset($_POST['change']))
    {
            $var= "<br><br><br><h3>To Choose Color click on it and then click on submit<br><br></h3><label><input type='radio' name='ccolor' value='1' checked><img src=images/a.jpg></label>
            <label><input type='radio' name='ccolor' value='2'><img src=images/a34.jpg></label>
            <label><input type='radio' name='ccolor' value='3'><img src=images/a2.jpg></label>";
        $r=mysqli_query($conn,"select * from fur where Fnm='Sofa' and Ftype='Sectional' and Ftnm='Jason wu' and Fcolor='White'");
        if($r)
        {
            while($row=mysqli_fetch_array($r))
            {
                echo "<div class=app-figure id=zoom-fig>
        <a id=spin-1 class=Magic360 data-options=rows: 4; columns: 12
            href=".$row['Fimg']."
        ><img src=".$row['Fimg']."></a>
    </div>";
    $_SESSION['id']=$row['Fid'];
            }
        }
    }
    else
    {
        $c=$_POST['ccolor'];
        if($c==1)
        {
            $r=mysqli_query($conn,"select * from fur where Fnm='Sofa' and Ftype='Sectional' and Ftnm='Jason wu' and Fcolor='white'");
            if($r)
            {
                $var= "<br><br><br><h3>To Choose Color click on it and then click on submit<br><br></h3><label><input type='radio' name='ccolor' value='1' checked><img src=images/a.jpg></label>
                <label><input type='radio' name='ccolor' value='2'><img src=images/a34.jpg></label>
                <label><input type='radio' name='ccolor' value='3'><img src=images/a2.jpg></label>";
                while($row=mysqli_fetch_array($r))
                {
                    echo "<div class=app-figure id=zoom-fig>
            <a id=spin-1 class=Magic360 data-options=rows: 4; columns: 12
                href=".$row['Fimg']."
            ><img src=".$row['Fimg']."></a>
        </div>";
        $_SESSION['id']=$row['Fid'];
                }
            }
        }
        else if($c==2)
        {
            $r=mysqli_query($conn,"select * from fur where Fnm='Sofa' and Ftype='Sectional' and Ftnm='Jason wu' and Fcolor='Lb'");
            if($r)
            {
                $var= "<br><br><br><h3>To Choose Color click on it and then click on submit<br><br></h3><label><input type='radio' name='ccolor' value='1'><img src=images/a.jpg></label>
                <label><input type='radio' name='ccolor' value='2' checked><img src=images/a34.jpg></label>
                <label><input type='radio' name='ccolor' value='3'><img src=images/a2.jpg></label>";
                while($row=mysqli_fetch_array($r))
                {
                    echo "<div class=app-figure id=zoom-fig>
            <a id=spin-1 class=Magic360 data-options=rows: 4; columns: 12
                href=".$row['Fimg']."
            ><img src=".$row['Fimg']."></a>
        </div>";
        $_SESSION['id']=$row['Fid'];
                }
            }
        }
        else
        {
            $r=mysqli_query($conn,"select * from fur where Fnm='Sofa' and Ftype='Sectional' and Ftnm='Jason wu' and Fcolor='Red'");
            if($r)
            {
                $var= "<br><br><br><h3>To Choose Color click on it and then click on submit<br><br></h3><label><input type='radio' name='ccolor' value='1'><img src=images/a.jpg></label>
                <label><input type='radio' name='ccolor' value='2'><img src=images/a34.jpg></label>
                <label><input type='radio' name='ccolor' value='3' checked><img src=images/a2.jpg></label>";
                while($row=mysqli_fetch_array($r))
                {
                    echo "<div class=app-figure id=zoom-fig>
            <a id=spin-1 class=Magic360 data-options=rows: 4; columns: 12
                href=".$row['Fimg']."
            ><img src=".$row['Fimg']."></a>
        </div>";
        $_SESSION['id']=$row['Fid'];
                }
            }
        }
    }
    return $var;
}

include 'inc/footer.php';
?>



</div>
<div>
</body>
</html>