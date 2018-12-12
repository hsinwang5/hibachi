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
eval("__webpack_require__.r(__webpack_exports__);\nlet dinnerMenuTitle = document.querySelectorAll(\".js-dinner-menu__title-hook\");\r\n\r\nfunction lunchMenu() {\r\n  for (let i = 0; i < dinnerMenuTitle.length; i++) {\r\n    dinnerMenuTitle[i].addEventListener(\"click\", function() {\r\n      this.parentNode.childNodes[3].classList.toggle(\"js-dinner-expand-menu\");\r\n      this.childNodes[1].classList.toggle(\"js-chevron-rotate\");\r\n      console.log(this.childNodes[1]);\r\n    });\r\n  }\r\n}\r\n\r\n/* harmony default export */ __webpack_exports__[\"default\"] = (lunchMenu);\r\n\n\n//# sourceURL=webpack:///./app/public/wp-content/themes/hibachichinese/js/modules/dinnerMenu.js?");

/***/ }),

/***/ "./app/public/wp-content/themes/hibachichinese/js/modules/header.js":
/*!**************************************************************************!*\
  !*** ./app/public/wp-content/themes/hibachichinese/js/modules/header.js ***!
  \**************************************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

eval("let headerMenu = document.querySelector(\".header-menu\");\r\nlet menuButton = document.querySelector(\".mobile-menu\");\r\nlet closeButton = document.querySelector(\".close-menu\");\r\n\r\nmenuButton.addEventListener(\"click\", function() {\r\n  headerMenu.classList.toggle(\"js-header-slide-down\");\r\n  // menuButton.classList.add(\"inactive\");\r\n});\r\n\r\n// closeButton.addEventListener(\"click\", function() {\r\n//   header.classList.remove(\"js-header-slide-down\");\r\n//   // menuButton.classList.remove(\"inactive\");\r\n// });\r\n\n\n//# sourceURL=webpack:///./app/public/wp-content/themes/hibachichinese/js/modules/header.js?");

/***/ }),

/***/ "./app/public/wp-content/themes/hibachichinese/js/modules/lunchMenu.js":
/*!*****************************************************************************!*\
  !*** ./app/public/wp-content/themes/hibachichinese/js/modules/lunchMenu.js ***!
  \*****************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\nlet headerArrays = document.querySelectorAll(\".js-menu-item__heading\");\r\nlet plusHook = document.querySelectorAll(\".js-plus-hook\");\r\nlet minusHook = document.querySelectorAll(\".js-minus-hook\");\r\nlet menuItem = document.querySelectorAll(\".menu-item\");\r\n\r\nconsole.log(menuItem);\r\n\r\nfunction lunchMenu() {\r\n  for (let i = 0; i < headerArrays.length; i++) {\r\n    headerArrays[i].addEventListener(\"click\", function() {\r\n      this.parentNode.childNodes[3].classList.toggle(\"js-expand-menu\");\r\n      plusHook[i].classList.toggle(\"inactive\");\r\n      minusHook[i].classList.toggle(\"inactive\");\r\n      this.parentNode.childNodes[5].classList.toggle(\"js-menu-item__hover\");\r\n      this.parentNode.classList.toggle(\"js-menu-item__change\");\r\n      console.log(this.parentNode.childNodes[5]);\r\n    });\r\n    // menuItem[i].addEventListener(\"mouseover\", function() {\r\n    //   menuItem[i].childNodes[5].classList.add(\"js-menu-item__hover\");\r\n    // });\r\n    // menuItem[i].addEventListener(\"mouseout\", function() {\r\n    //   menuItem[i].childNodes[5].classList.remove(\"js-menu-item__hover\");\r\n    // });\r\n  }\r\n}\r\n\r\n/* harmony default export */ __webpack_exports__[\"default\"] = (lunchMenu);\r\n\n\n//# sourceURL=webpack:///./app/public/wp-content/themes/hibachichinese/js/modules/lunchMenu.js?");

/***/ }),

/***/ "./app/public/wp-content/themes/hibachichinese/js/scripts.js":
/*!*******************************************************************!*\
  !*** ./app/public/wp-content/themes/hibachichinese/js/scripts.js ***!
  \*******************************************************************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _modules_lunchMenu__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./modules/lunchMenu */ \"./app/public/wp-content/themes/hibachichinese/js/modules/lunchMenu.js\");\n/* harmony import */ var _modules_dinnerMenu__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./modules/dinnerMenu */ \"./app/public/wp-content/themes/hibachichinese/js/modules/dinnerMenu.js\");\n/* harmony import */ var _modules_header__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./modules/header */ \"./app/public/wp-content/themes/hibachichinese/js/modules/header.js\");\n/* harmony import */ var _modules_header__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(_modules_header__WEBPACK_IMPORTED_MODULE_2__);\n\n\n\n\n\n\nObject(_modules_lunchMenu__WEBPACK_IMPORTED_MODULE_0__[\"default\"])();\nObject(_modules_dinnerMenu__WEBPACK_IMPORTED_MODULE_1__[\"default\"])();\n_modules_header__WEBPACK_IMPORTED_MODULE_2___default()();\n\n\n//# sourceURL=webpack:///./app/public/wp-content/themes/hibachichinese/js/scripts.js?");

/***/ })

/******/ });