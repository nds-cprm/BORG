
%s/\("[^"]*"\) *: *\("[^"]*"\)/<li>\1 : \2<\/li>/

%s/\("[^"]*"\) *: *{/<li>\1 : {<ul>/

%s/ "/ <li>"/


:%s/\("[^"]*"\) *: *\("[^"]*"\)/<dt>\1<\/dt> : <dd>\2<\/dd>/
:%s/ "\([^"]*\)" :/ <dt>"\1"<\/dt> :/

:%s/ : {/ : <dd>{/
:%s/},/},<\/dd>/

:%s/ {$/ <dd>{/
:%s/ }$/ }<\/dd>/

:%s/ \[/ <dd>\[/ 
:%s/ \]/ \]<\/dd>/

:$s/^/<\/body>\r<\/html>/

:
<!DOCTYPE HTML>
<html>
<head>
<meta lang="pt-br">
<meta charset="UTF-8">
<title> Aflora </title>
<script src="aflora2html5.js"></script>
<link rel="stylesheet" type="text/css"  href="aflora2html.css" />
<style>
body{ font-family: helvetica, sans-serif; font-size: 16px; }
li{ position: relative; border-right: 1px solid #c0c0c0; } 
</style>
</head>
<body>
