!function(r){var t={};function e(n){if(t[n])return t[n].exports;var o=t[n]={i:n,l:!1,exports:{}};return r[n].call(o.exports,o,o.exports,e),o.l=!0,o.exports}e.m=r,e.c=t,e.d=function(r,t,n){e.o(r,t)||Object.defineProperty(r,t,{configurable:!1,enumerable:!0,get:n})},e.n=function(r){var t=r&&r.__esModule?function(){return r.default}:function(){return r};return e.d(t,"a",t),t},e.o=function(r,t){return Object.prototype.hasOwnProperty.call(r,t)},e.p="/assets/",e(e.s=184)}({1:function(r,t,e){e(2);r.exports={bind:function(r,t,e){t=t.split(" "),"string"==typeof r&&(r=Array.from(document.querySelectorAll(r))),Array.isArray(r)||(r=Array.from([r])),r.forEach(function(r){t.forEach(function(t){r.addEventListener?r.addEventListener(t,e,!1):r.attachEvent?r.attachEvent("on"+t,e):r["on"+t]=e})})},unbind:function(r,t,e){t=t.split(" "),"string"==typeof r&&(r=Array.from(document.querySelectorAll(r))),Array.isArray(r)||(r=Array.from([r])),r.forEach(function(r){t.forEach(function(t){r.addEventListener?r.removeEventListener(t,e,!1):r.attachEvent?r.detachEvent("on"+t,e):r["on"+t]=null})})}}},184:function(r,t,e){var n=function(){return function(r,t){if(Array.isArray(r))return r;if(Symbol.iterator in Object(r))return function(r,t){var e=[],n=!0,o=!1,a=void 0;try{for(var i,c=r[Symbol.iterator]();!(n=(i=c.next()).done)&&(e.push(i.value),!t||e.length!==t);n=!0);}catch(r){o=!0,a=r}finally{try{!n&&c.return&&c.return()}finally{if(o)throw a}}return e}(r,t);throw new TypeError("Invalid attempt to destructure non-iterable instance")}}(),o=e(1).bind;Stats={host:"speakerdeck.com",record:function(r,t){(new Image).src=this.beaconUrl()+"?"+this.toQueryString(r,t)},toQueryString:function(r,t){var e=this,o=["version=one","type="+r,"timestamp="+Stats.timestamp()];return Object.entries(t).map(function(r){var t=n(r,2),o=t[0],a=t[1];return[e.encode(o),e.encode(a)]}).forEach(function(r){var t=n(r,2),e=t[0],a=t[1];o.push("data["+e+"]="+a)}),o.join("&")},beaconUrl:function(){return"//"+this.host+"/beacon.gif"},timestamp:function(){return(new Date).getTime()},encode:function(r){return r?window.encodeURIComponent(r):""}},Stats.Page={data:function(){var r={page:Stats.Page.url(),referrer:Stats.Page.referrer()};return Object.assign({},r,this.metaTagData())},metaTagData:function(){var r=document.querySelectorAll("meta[name|=stats]");return Array.prototype.slice.call(r).reduce(function(r,t){var e=t.name.replace(/^stats-/,""),n=t.content;return r[e]=n,r},{})},url:function(){try{return document.location.href}catch(r){return}},referrer:function(){try{return window.top.document.referrer}catch(r){try{return window.parent.document.referrer}catch(r){return}}return document.referrer}},o(document,"DOMContentLoaded",function(){Stats.record("page_view",Stats.Page.data())})},2:function(r,t){var e,n,o,a;Array.from||(Array.from=(e=Object.prototype.toString,n=function(r){return"function"===typeof r||"[object Function]"===e.call(r)},o=Math.pow(2,53)-1,a=function(r){var t=function(r){var t=Number(r);return isNaN(t)?0:0!==t&&isFinite(t)?(t>0?1:-1)*Math.floor(Math.abs(t)):t}(r);return Math.min(Math.max(t,0),o)},function(r){var t=Object(r);if(null==r)throw new TypeError("Array.from requires an array-like object - not null or undefined");var e,o=arguments.length>1?arguments[1]:void 0;if("undefined"!==typeof o){if(!n(o))throw new TypeError("Array.from: when provided, the second argument must be a function");arguments.length>2&&(e=arguments[2])}for(var i,c=a(t.length),u=n(this)?Object(new this(c)):new Array(c),f=0;f<c;)i=t[f],u[f]=o?"undefined"===typeof e?o(i,f):o.call(e,i,f):i,f+=1;return u.length=c,u})),Array.isArray||(Array.isArray=function(r){return"[object Array]"===Object.prototype.toString.call(r)})}});
//# sourceMappingURL=stats-8d4484159e6bd7cb6cdc.js.map