/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/public/wp-content/themes/hibachichinese/js/scripts.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/public/wp-content/themes/hibachichinese/js/modules/dinnerMenu.js":
/*!******************************************************************************!*\
  !*** ./app/public/wp-content/themes/hibachichinese/js/modules/dinnerMenu.js ***!
  \******************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\nlet dinnerMenuTitle = document.querySelectorAll(\".js-dinner-menu__title-hook\");\r\n\r\n// for (let i = 0; i < dinnerMenuTitle.length; i++) {\r\n//   dinnerMenuTitle[i].parentNode.childNodes[3].classList.toggle(\r\n//     \"js-dinner-expand-menu\"\r\n//   );\r\n// }\r\n\r\nfunction lunchMenu() {\r\n  for (let i = 0; i < dinnerMenuTitle.length; i++) {\r\n    dinnerMenuTitle[i].addEventListener(\"click\", function() {\r\n      this.parentNode.childNodes[3].classList.toggle(\"js-dinner-expand-menu\");\r\n      this.childNodes[1].classList.toggle(\"js-chevron-rotate\");\r\n      console.log(this.childNodes[1]);\r\n    });\r\n  }\r\n}\r\n\r\n/* harmony default export */ __webpack_exports__[\"default\"] = (lunchMenu);\r\n\n\n//# sourceURL=webpack:///./app/public/wp-content/themes/hibachichinese/js/modules/dinnerMenu.js?");

/***/ }),

/***/ "./app/public/wp-content/themes/hibachichinese/js/modules/frontPage.js":
/*!*****************************************************************************!*\
  !*** ./app/public/wp-content/themes/hibachichinese/js/modules/frontPage.js ***!
  \*****************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("let display = document.querySelector(\".display\");\r\nlet displayItem = document.querySelectorAll(\".display-item\");\r\n\r\nlet scrollSpeed = window.innerWidth > 1920 ? 2 : 1;\r\nconsole.log(scrollSpeed);\r\n\r\nif (display) {\r\n  requestAnimationFrame(scroller);\r\n  insertClone();\r\n  setInterval(insertClone, 15000);\r\n\r\n  function scroller() {\r\n    display.scrollBy(scrollSpeed, 0);\r\n    requestAnimationFrame(scroller);\r\n  }\r\n\r\n  function insertClone() {\r\n    for (let i = 0; i < displayItem.length; i++) {\r\n      display.appendChild(displayItem[i].cloneNode(true));\r\n    }\r\n  }\r\n}\r\n\n\n//# sourceURL=webpack:///./app/public/wp-content/themes/hibachichinese/js/modules/frontPage.js?");

/***/ }),

/***/ "./app/public/wp-content/themes/hibachichinese/js/modules/header.js":
/*!**************************************************************************!*\
  !*** ./app/public/wp-content/themes/hibachichinese/js/modules/header.js ***!
  \**************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("let radialMenu = document.querySelector(\".radial-menu\");\r\nlet menuButton = document.querySelector(\".mobile-menu\");\r\nlet link1 = document.querySelector(\".radial-menu__link--1\");\r\nlet link2 = document.querySelector(\".radial-menu__link--2\");\r\nlet roundLogo = document.querySelector(\".round-logo\");\r\nlet headerBar = document.querySelector(\".header-container\");\r\nlet lastScrollPos = 0;\r\nlet throttle = __webpack_require__(/*! lodash.throttle */ \"./node_modules/lodash.throttle/index.js\");\r\n\r\nmenuButton.addEventListener(\"click\", function() {\r\n  radialMenu.classList.toggle(\"js-header-slide-down\");\r\n  link1.classList.toggle(\"js-links-slide\");\r\n  link2.classList.toggle(\"js-links-slide\");\r\n\r\n  // menuButton.classList.add(\"inactive\");\r\n});\r\n\r\nlet scrollAction = function() {\r\n  if (window.pageYOffset > 25) {\r\n    headerBar.classList.add(\"js-headerbar-shrink\");\r\n    roundLogo.classList.add(\"js-logo-animate\");\r\n  } else {\r\n    headerBar.classList.remove(\"js-headerbar-shrink\");\r\n    roundLogo.classList.remove(\"js-logo-animate\");\r\n  }\r\n  lastScrollPos = window.pageYOffset;\r\n};\r\n\r\nwindow.addEventListener(\"scroll\", throttle(scrollAction, 100));\r\n\r\n// window.addEventListener(\"scroll\", function() {\r\n//   console.log(\"window.pageYOffset\");\r\n// });\r\n\n\n//# sourceURL=webpack:///./app/public/wp-content/themes/hibachichinese/js/modules/header.js?");

/***/ }),

/***/ "./app/public/wp-content/themes/hibachichinese/js/modules/lunchMenu.js":
/*!*****************************************************************************!*\
  !*** ./app/public/wp-content/themes/hibachichinese/js/modules/lunchMenu.js ***!
  \*****************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\nlet headerArrays = document.querySelectorAll(\".js-menu-item__heading\");\r\nlet plusHook = document.querySelectorAll(\".js-plus-hook\");\r\nlet minusHook = document.querySelectorAll(\".js-minus-hook\");\r\nlet menuItem = document.querySelectorAll(\".menu-item\");\r\nlet rightMenu = document.querySelectorAll(\".right-menu\");\r\nlet leftMenu = document.querySelectorAll(\".left-menu\");\r\nlet footer = document.querySelectorAll(\".footer\");\r\nlet footerScroll;\r\n\r\nsetTimeout(function() {\r\n  footerScroll = footer[0].offsetTop - 100;\r\n  if (rightMenu.length) {\r\n    rightMenu[0].style = \"height: \" + footerScroll + \"px;\";\r\n    leftMenu[0].style = \"height: \" + footerScroll + \"px;\";\r\n  }\r\n}, 350);\r\n\r\nfunction lunchMenu() {\r\n  for (let i = 0; i < headerArrays.length; i++) {\r\n    headerArrays[i].addEventListener(\"click\", function() {\r\n      toggleMenuDetails(this, i);\r\n      setImageHeight();\r\n      console.log(\"click\");\r\n    });\r\n  }\r\n  window.addEventListener(\"resize\", function() {\r\n    setImageHeight();\r\n  });\r\n}\r\n\r\n//sub-functions ----------------------------------------------------------------------\r\n\r\nfunction setImageHeight() {\r\n  if (rightMenu.length) {\r\n    rightMenu[0].style = \"height: \" + footer[0].offsetTop + \"px;\";\r\n    leftMenu[0].style = \"height: \" + footer[0].offsetTop + \"px;\";\r\n  }\r\n}\r\n\r\nfunction toggleMenuDetails(a, index) {\r\n  a.parentNode.childNodes[3].classList.toggle(\"js-expand-menu\");\r\n  plusHook[index].classList.toggle(\"inactive\");\r\n  minusHook[index].classList.toggle(\"inactive\");\r\n  a.parentNode.childNodes[5].classList.toggle(\"js-menu-item__hover\");\r\n  a.parentNode.classList.toggle(\"js-menu-item__change\");\r\n}\r\n\r\n/* harmony default export */ __webpack_exports__[\"default\"] = (lunchMenu);\r\n\n\n//# sourceURL=webpack:///./app/public/wp-content/themes/hibachichinese/js/modules/lunchMenu.js?");

/***/ }),

/***/ "./app/public/wp-content/themes/hibachichinese/js/scripts.js":
/*!*******************************************************************!*\
  !*** ./app/public/wp-content/themes/hibachichinese/js/scripts.js ***!
  \*******************************************************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _modules_frontPage__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./modules/frontPage */ \"./app/public/wp-content/themes/hibachichinese/js/modules/frontPage.js\");\n/* harmony import */ var _modules_frontPage__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_modules_frontPage__WEBPACK_IMPORTED_MODULE_0__);\n/* harmony import */ var _modules_lunchMenu__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./modules/lunchMenu */ \"./app/public/wp-content/themes/hibachichinese/js/modules/lunchMenu.js\");\n/* harmony import */ var _modules_dinnerMenu__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./modules/dinnerMenu */ \"./app/public/wp-content/themes/hibachichinese/js/modules/dinnerMenu.js\");\n/* harmony import */ var _modules_header__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./modules/header */ \"./app/public/wp-content/themes/hibachichinese/js/modules/header.js\");\n/* harmony import */ var _modules_header__WEBPACK_IMPORTED_MODULE_3___default = /*#__PURE__*/__webpack_require__.n(_modules_header__WEBPACK_IMPORTED_MODULE_3__);\n\n\n\n\n\n\n\nObject(_modules_lunchMenu__WEBPACK_IMPORTED_MODULE_1__[\"default\"])();\nObject(_modules_dinnerMenu__WEBPACK_IMPORTED_MODULE_2__[\"default\"])();\n_modules_header__WEBPACK_IMPORTED_MODULE_3___default()();\n_modules_frontPage__WEBPACK_IMPORTED_MODULE_0___default()();\n\n\n//# sourceURL=webpack:///./app/public/wp-content/themes/hibachichinese/js/scripts.js?");

/***/ }),

/***/ "./node_modules/lodash.throttle/index.js":
/*!***********************************************!*\
  !*** ./node_modules/lodash.throttle/index.js ***!
  \***********************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

eval("/* WEBPACK VAR INJECTION */(function(global) {/**\r\n * lodash (Custom Build) <https://lodash.com/>\r\n * Build: `lodash modularize exports=\"npm\" -o ./`\r\n * Copyright jQuery Foundation and other contributors <https://jquery.org/>\r\n * Released under MIT license <https://lodash.com/license>\r\n * Based on Underscore.js 1.8.3 <http://underscorejs.org/LICENSE>\r\n * Copyright Jeremy Ashkenas, DocumentCloud and Investigative Reporters & Editors\r\n */\r\n\r\n/** Used as the `TypeError` message for \"Functions\" methods. */\r\nvar FUNC_ERROR_TEXT = 'Expected a function';\r\n\r\n/** Used as references for various `Number` constants. */\r\nvar NAN = 0 / 0;\r\n\r\n/** `Object#toString` result references. */\r\nvar symbolTag = '[object Symbol]';\r\n\r\n/** Used to match leading and trailing whitespace. */\r\nvar reTrim = /^\\s+|\\s+$/g;\r\n\r\n/** Used to detect bad signed hexadecimal string values. */\r\nvar reIsBadHex = /^[-+]0x[0-9a-f]+$/i;\r\n\r\n/** Used to detect binary string values. */\r\nvar reIsBinary = /^0b[01]+$/i;\r\n\r\n/** Used to detect octal string values. */\r\nvar reIsOctal = /^0o[0-7]+$/i;\r\n\r\n/** Built-in method references without a dependency on `root`. */\r\nvar freeParseInt = parseInt;\r\n\r\n/** Detect free variable `global` from Node.js. */\r\nvar freeGlobal = typeof global == 'object' && global && global.Object === Object && global;\r\n\r\n/** Detect free variable `self`. */\r\nvar freeSelf = typeof self == 'object' && self && self.Object === Object && self;\r\n\r\n/** Used as a reference to the global object. */\r\nvar root = freeGlobal || freeSelf || Function('return this')();\r\n\r\n/** Used for built-in method references. */\r\nvar objectProto = Object.prototype;\r\n\r\n/**\r\n * Used to resolve the\r\n * [`toStringTag`](http://ecma-international.org/ecma-262/7.0/#sec-object.prototype.tostring)\r\n * of values.\r\n */\r\nvar objectToString = objectProto.toString;\r\n\r\n/* Built-in method references for those with the same name as other `lodash` methods. */\r\nvar nativeMax = Math.max,\r\n    nativeMin = Math.min;\r\n\r\n/**\r\n * Gets the timestamp of the number of milliseconds that have elapsed since\r\n * the Unix epoch (1 January 1970 00:00:00 UTC).\r\n *\r\n * @static\r\n * @memberOf _\r\n * @since 2.4.0\r\n * @category Date\r\n * @returns {number} Returns the timestamp.\r\n * @example\r\n *\r\n * _.defer(function(stamp) {\r\n *   console.log(_.now() - stamp);\r\n * }, _.now());\r\n * // => Logs the number of milliseconds it took for the deferred invocation.\r\n */\r\nvar now = function() {\r\n  return root.Date.now();\r\n};\r\n\r\n/**\r\n * Creates a debounced function that delays invoking `func` until after `wait`\r\n * milliseconds have elapsed since the last time the debounced function was\r\n * invoked. The debounced function comes with a `cancel` method to cancel\r\n * delayed `func` invocations and a `flush` method to immediately invoke them.\r\n * Provide `options` to indicate whether `func` should be invoked on the\r\n * leading and/or trailing edge of the `wait` timeout. The `func` is invoked\r\n * with the last arguments provided to the debounced function. Subsequent\r\n * calls to the debounced function return the result of the last `func`\r\n * invocation.\r\n *\r\n * **Note:** If `leading` and `trailing` options are `true`, `func` is\r\n * invoked on the trailing edge of the timeout only if the debounced function\r\n * is invoked more than once during the `wait` timeout.\r\n *\r\n * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\r\n * until to the next tick, similar to `setTimeout` with a timeout of `0`.\r\n *\r\n * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\r\n * for details over the differences between `_.debounce` and `_.throttle`.\r\n *\r\n * @static\r\n * @memberOf _\r\n * @since 0.1.0\r\n * @category Function\r\n * @param {Function} func The function to debounce.\r\n * @param {number} [wait=0] The number of milliseconds to delay.\r\n * @param {Object} [options={}] The options object.\r\n * @param {boolean} [options.leading=false]\r\n *  Specify invoking on the leading edge of the timeout.\r\n * @param {number} [options.maxWait]\r\n *  The maximum time `func` is allowed to be delayed before it's invoked.\r\n * @param {boolean} [options.trailing=true]\r\n *  Specify invoking on the trailing edge of the timeout.\r\n * @returns {Function} Returns the new debounced function.\r\n * @example\r\n *\r\n * // Avoid costly calculations while the window size is in flux.\r\n * jQuery(window).on('resize', _.debounce(calculateLayout, 150));\r\n *\r\n * // Invoke `sendMail` when clicked, debouncing subsequent calls.\r\n * jQuery(element).on('click', _.debounce(sendMail, 300, {\r\n *   'leading': true,\r\n *   'trailing': false\r\n * }));\r\n *\r\n * // Ensure `batchLog` is invoked once after 1 second of debounced calls.\r\n * var debounced = _.debounce(batchLog, 250, { 'maxWait': 1000 });\r\n * var source = new EventSource('/stream');\r\n * jQuery(source).on('message', debounced);\r\n *\r\n * // Cancel the trailing debounced invocation.\r\n * jQuery(window).on('popstate', debounced.cancel);\r\n */\r\nfunction debounce(func, wait, options) {\r\n  var lastArgs,\r\n      lastThis,\r\n      maxWait,\r\n      result,\r\n      timerId,\r\n      lastCallTime,\r\n      lastInvokeTime = 0,\r\n      leading = false,\r\n      maxing = false,\r\n      trailing = true;\r\n\r\n  if (typeof func != 'function') {\r\n    throw new TypeError(FUNC_ERROR_TEXT);\r\n  }\r\n  wait = toNumber(wait) || 0;\r\n  if (isObject(options)) {\r\n    leading = !!options.leading;\r\n    maxing = 'maxWait' in options;\r\n    maxWait = maxing ? nativeMax(toNumber(options.maxWait) || 0, wait) : maxWait;\r\n    trailing = 'trailing' in options ? !!options.trailing : trailing;\r\n  }\r\n\r\n  function invokeFunc(time) {\r\n    var args = lastArgs,\r\n        thisArg = lastThis;\r\n\r\n    lastArgs = lastThis = undefined;\r\n    lastInvokeTime = time;\r\n    result = func.apply(thisArg, args);\r\n    return result;\r\n  }\r\n\r\n  function leadingEdge(time) {\r\n    // Reset any `maxWait` timer.\r\n    lastInvokeTime = time;\r\n    // Start the timer for the trailing edge.\r\n    timerId = setTimeout(timerExpired, wait);\r\n    // Invoke the leading edge.\r\n    return leading ? invokeFunc(time) : result;\r\n  }\r\n\r\n  function remainingWait(time) {\r\n    var timeSinceLastCall = time - lastCallTime,\r\n        timeSinceLastInvoke = time - lastInvokeTime,\r\n        result = wait - timeSinceLastCall;\r\n\r\n    return maxing ? nativeMin(result, maxWait - timeSinceLastInvoke) : result;\r\n  }\r\n\r\n  function shouldInvoke(time) {\r\n    var timeSinceLastCall = time - lastCallTime,\r\n        timeSinceLastInvoke = time - lastInvokeTime;\r\n\r\n    // Either this is the first call, activity has stopped and we're at the\r\n    // trailing edge, the system time has gone backwards and we're treating\r\n    // it as the trailing edge, or we've hit the `maxWait` limit.\r\n    return (lastCallTime === undefined || (timeSinceLastCall >= wait) ||\r\n      (timeSinceLastCall < 0) || (maxing && timeSinceLastInvoke >= maxWait));\r\n  }\r\n\r\n  function timerExpired() {\r\n    var time = now();\r\n    if (shouldInvoke(time)) {\r\n      return trailingEdge(time);\r\n    }\r\n    // Restart the timer.\r\n    timerId = setTimeout(timerExpired, remainingWait(time));\r\n  }\r\n\r\n  function trailingEdge(time) {\r\n    timerId = undefined;\r\n\r\n    // Only invoke if we have `lastArgs` which means `func` has been\r\n    // debounced at least once.\r\n    if (trailing && lastArgs) {\r\n      return invokeFunc(time);\r\n    }\r\n    lastArgs = lastThis = undefined;\r\n    return result;\r\n  }\r\n\r\n  function cancel() {\r\n    if (timerId !== undefined) {\r\n      clearTimeout(timerId);\r\n    }\r\n    lastInvokeTime = 0;\r\n    lastArgs = lastCallTime = lastThis = timerId = undefined;\r\n  }\r\n\r\n  function flush() {\r\n    return timerId === undefined ? result : trailingEdge(now());\r\n  }\r\n\r\n  function debounced() {\r\n    var time = now(),\r\n        isInvoking = shouldInvoke(time);\r\n\r\n    lastArgs = arguments;\r\n    lastThis = this;\r\n    lastCallTime = time;\r\n\r\n    if (isInvoking) {\r\n      if (timerId === undefined) {\r\n        return leadingEdge(lastCallTime);\r\n      }\r\n      if (maxing) {\r\n        // Handle invocations in a tight loop.\r\n        timerId = setTimeout(timerExpired, wait);\r\n        return invokeFunc(lastCallTime);\r\n      }\r\n    }\r\n    if (timerId === undefined) {\r\n      timerId = setTimeout(timerExpired, wait);\r\n    }\r\n    return result;\r\n  }\r\n  debounced.cancel = cancel;\r\n  debounced.flush = flush;\r\n  return debounced;\r\n}\r\n\r\n/**\r\n * Creates a throttled function that only invokes `func` at most once per\r\n * every `wait` milliseconds. The throttled function comes with a `cancel`\r\n * method to cancel delayed `func` invocations and a `flush` method to\r\n * immediately invoke them. Provide `options` to indicate whether `func`\r\n * should be invoked on the leading and/or trailing edge of the `wait`\r\n * timeout. The `func` is invoked with the last arguments provided to the\r\n * throttled function. Subsequent calls to the throttled function return the\r\n * result of the last `func` invocation.\r\n *\r\n * **Note:** If `leading` and `trailing` options are `true`, `func` is\r\n * invoked on the trailing edge of the timeout only if the throttled function\r\n * is invoked more than once during the `wait` timeout.\r\n *\r\n * If `wait` is `0` and `leading` is `false`, `func` invocation is deferred\r\n * until to the next tick, similar to `setTimeout` with a timeout of `0`.\r\n *\r\n * See [David Corbacho's article](https://css-tricks.com/debouncing-throttling-explained-examples/)\r\n * for details over the differences between `_.throttle` and `_.debounce`.\r\n *\r\n * @static\r\n * @memberOf _\r\n * @since 0.1.0\r\n * @category Function\r\n * @param {Function} func The function to throttle.\r\n * @param {number} [wait=0] The number of milliseconds to throttle invocations to.\r\n * @param {Object} [options={}] The options object.\r\n * @param {boolean} [options.leading=true]\r\n *  Specify invoking on the leading edge of the timeout.\r\n * @param {boolean} [options.trailing=true]\r\n *  Specify invoking on the trailing edge of the timeout.\r\n * @returns {Function} Returns the new throttled function.\r\n * @example\r\n *\r\n * // Avoid excessively updating the position while scrolling.\r\n * jQuery(window).on('scroll', _.throttle(updatePosition, 100));\r\n *\r\n * // Invoke `renewToken` when the click event is fired, but not more than once every 5 minutes.\r\n * var throttled = _.throttle(renewToken, 300000, { 'trailing': false });\r\n * jQuery(element).on('click', throttled);\r\n *\r\n * // Cancel the trailing throttled invocation.\r\n * jQuery(window).on('popstate', throttled.cancel);\r\n */\r\nfunction throttle(func, wait, options) {\r\n  var leading = true,\r\n      trailing = true;\r\n\r\n  if (typeof func != 'function') {\r\n    throw new TypeError(FUNC_ERROR_TEXT);\r\n  }\r\n  if (isObject(options)) {\r\n    leading = 'leading' in options ? !!options.leading : leading;\r\n    trailing = 'trailing' in options ? !!options.trailing : trailing;\r\n  }\r\n  return debounce(func, wait, {\r\n    'leading': leading,\r\n    'maxWait': wait,\r\n    'trailing': trailing\r\n  });\r\n}\r\n\r\n/**\r\n * Checks if `value` is the\r\n * [language type](http://www.ecma-international.org/ecma-262/7.0/#sec-ecmascript-language-types)\r\n * of `Object`. (e.g. arrays, functions, objects, regexes, `new Number(0)`, and `new String('')`)\r\n *\r\n * @static\r\n * @memberOf _\r\n * @since 0.1.0\r\n * @category Lang\r\n * @param {*} value The value to check.\r\n * @returns {boolean} Returns `true` if `value` is an object, else `false`.\r\n * @example\r\n *\r\n * _.isObject({});\r\n * // => true\r\n *\r\n * _.isObject([1, 2, 3]);\r\n * // => true\r\n *\r\n * _.isObject(_.noop);\r\n * // => true\r\n *\r\n * _.isObject(null);\r\n * // => false\r\n */\r\nfunction isObject(value) {\r\n  var type = typeof value;\r\n  return !!value && (type == 'object' || type == 'function');\r\n}\r\n\r\n/**\r\n * Checks if `value` is object-like. A value is object-like if it's not `null`\r\n * and has a `typeof` result of \"object\".\r\n *\r\n * @static\r\n * @memberOf _\r\n * @since 4.0.0\r\n * @category Lang\r\n * @param {*} value The value to check.\r\n * @returns {boolean} Returns `true` if `value` is object-like, else `false`.\r\n * @example\r\n *\r\n * _.isObjectLike({});\r\n * // => true\r\n *\r\n * _.isObjectLike([1, 2, 3]);\r\n * // => true\r\n *\r\n * _.isObjectLike(_.noop);\r\n * // => false\r\n *\r\n * _.isObjectLike(null);\r\n * // => false\r\n */\r\nfunction isObjectLike(value) {\r\n  return !!value && typeof value == 'object';\r\n}\r\n\r\n/**\r\n * Checks if `value` is classified as a `Symbol` primitive or object.\r\n *\r\n * @static\r\n * @memberOf _\r\n * @since 4.0.0\r\n * @category Lang\r\n * @param {*} value The value to check.\r\n * @returns {boolean} Returns `true` if `value` is a symbol, else `false`.\r\n * @example\r\n *\r\n * _.isSymbol(Symbol.iterator);\r\n * // => true\r\n *\r\n * _.isSymbol('abc');\r\n * // => false\r\n */\r\nfunction isSymbol(value) {\r\n  return typeof value == 'symbol' ||\r\n    (isObjectLike(value) && objectToString.call(value) == symbolTag);\r\n}\r\n\r\n/**\r\n * Converts `value` to a number.\r\n *\r\n * @static\r\n * @memberOf _\r\n * @since 4.0.0\r\n * @category Lang\r\n * @param {*} value The value to process.\r\n * @returns {number} Returns the number.\r\n * @example\r\n *\r\n * _.toNumber(3.2);\r\n * // => 3.2\r\n *\r\n * _.toNumber(Number.MIN_VALUE);\r\n * // => 5e-324\r\n *\r\n * _.toNumber(Infinity);\r\n * // => Infinity\r\n *\r\n * _.toNumber('3.2');\r\n * // => 3.2\r\n */\r\nfunction toNumber(value) {\r\n  if (typeof value == 'number') {\r\n    return value;\r\n  }\r\n  if (isSymbol(value)) {\r\n    return NAN;\r\n  }\r\n  if (isObject(value)) {\r\n    var other = typeof value.valueOf == 'function' ? value.valueOf() : value;\r\n    value = isObject(other) ? (other + '') : other;\r\n  }\r\n  if (typeof value != 'string') {\r\n    return value === 0 ? value : +value;\r\n  }\r\n  value = value.replace(reTrim, '');\r\n  var isBinary = reIsBinary.test(value);\r\n  return (isBinary || reIsOctal.test(value))\r\n    ? freeParseInt(value.slice(2), isBinary ? 2 : 8)\r\n    : (reIsBadHex.test(value) ? NAN : +value);\r\n}\r\n\r\nmodule.exports = throttle;\r\n\n/* WEBPACK VAR INJECTION */}.call(this, __webpack_require__(/*! ./../webpack/buildin/global.js */ \"./node_modules/webpack/buildin/global.js\")))\n\n//# sourceURL=webpack:///./node_modules/lodash.throttle/index.js?");

/***/ }),

/***/ "./node_modules/webpack/buildin/global.js":
/*!***********************************!*\
  !*** (webpack)/buildin/global.js ***!
  \***********************************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("var g;\n\n// This works in non-strict mode\ng = (function() {\n\treturn this;\n})();\n\ntry {\n\t// This works if eval is allowed (see CSP)\n\tg = g || new Function(\"return this\")();\n} catch (e) {\n\t// This works if the window reference is available\n\tif (typeof window === \"object\") g = window;\n}\n\n// g can still be undefined, but nothing to do about it...\n// We return undefined, instead of nothing here, so it's\n// easier to handle this case. if(!global) { ...}\n\nmodule.exports = g;\n\n\n//# sourceURL=webpack:///(webpack)/buildin/global.js?");

/***/ })

/******/ });