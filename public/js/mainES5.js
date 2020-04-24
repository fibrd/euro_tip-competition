"use strict";

function _createForOfIteratorHelper(o) { if (typeof Symbol === "undefined" || o[Symbol.iterator] == null) { if (Array.isArray(o) || (o = _unsupportedIterableToArray(o))) { var i = 0; var F = function F() {}; return { s: F, n: function n() { if (i >= o.length) return { done: true }; return { done: false, value: o[i++] }; }, e: function e(_e) { throw _e; }, f: F }; } throw new TypeError("Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method."); } var it, normalCompletion = true, didErr = false, err; return { s: function s() { it = o[Symbol.iterator](); }, n: function n() { var step = it.next(); normalCompletion = step.done; return step; }, e: function e(_e2) { didErr = true; err = _e2; }, f: function f() { try { if (!normalCompletion && it.return != null) it.return(); } finally { if (didErr) throw err; } } }; }

function _unsupportedIterableToArray(o, minLen) { if (!o) return; if (typeof o === "string") return _arrayLikeToArray(o, minLen); var n = Object.prototype.toString.call(o).slice(8, -1); if (n === "Object" && o.constructor) n = o.constructor.name; if (n === "Map" || n === "Set") return Array.from(n); if (n === "Arguments" || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n)) return _arrayLikeToArray(o, minLen); }

function _arrayLikeToArray(arr, len) { if (len == null || len > arr.length) len = arr.length; for (var i = 0, arr2 = new Array(len); i < len; i++) { arr2[i] = arr[i]; } return arr2; }

/**
 * Handling MENU bar on smaller screen devices
 */
document.addEventListener('DOMContentLoaded', function () {
  // Get all "navbar-burger" elements
  var $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0); // Check if there are any navbar burgers

  if ($navbarBurgers.length > 0) {
    // Add a click event on each of them
    $navbarBurgers.forEach(function (el) {
      el.addEventListener('click', function () {
        // Get the target from the "data-target" attribute
        var target = el.dataset.target;
        var $target = document.getElementById(target); // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"

        el.classList.toggle('is-active');
        $target.classList.toggle('is-active');
      });
    });
  }
});
/**
 * Post textarea submitting after keyboarding ENTER
 */

var textarea = document.querySelector('textarea.postarea'),
    postForm = document.querySelector('.post-form');

if (textarea) {
  textarea.focus();
  textarea.addEventListener("keydown", function (event) {
    if (event.key === 'Enter') {
      event.preventDefault();
      postForm.submit();
    }
  });
}
/**
 * 
 * POST PAGE - EMOJIS
 *
 */


var emojis = document.querySelectorAll('.emojis-menu li');

var _iterator = _createForOfIteratorHelper(emojis),
    _step;

try {
  for (_iterator.s(); !(_step = _iterator.n()).done;) {
    var emoji = _step.value;
    emoji.addEventListener("click", function (event) {
      event.preventDefault();
      textarea.value += this.textContent;
    });
  }
  /**
   * Notification alert closing
   */

} catch (err) {
  _iterator.e(err);
} finally {
  _iterator.f();
}

var notificationDeleteButton = document.querySelector('button.delete');

if (notificationDeleteButton) {
  notificationDeleteButton.addEventListener('click', function () {
    var _this = this;

    this.parentElement.className += ' fade-me-out';
    setTimeout(function () {
      _this.parentElement.remove();
    }, 500);
  });
}

var alertBox = document.querySelector('.alert');

if (alertBox) {
  setTimeout(function () {
    alertBox.className += ' fade-me-out';
  }, 2000);
  setTimeout(function () {
    alertBox.remove();
  }, 2500);
}