/**
 * Handling MENU bar on smaller screen devices
 */
document.addEventListener('DOMContentLoaded', () => {

    // Get all "navbar-burger" elements
    const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0)
  
    // Check if there are any navbar burgers
    if ($navbarBurgers.length > 0) {
  
      // Add a click event on each of them
      $navbarBurgers.forEach( el => {
        el.addEventListener('click', () => {
  
          // Get the target from the "data-target" attribute
          const target = el.dataset.target
          const $target = document.getElementById(target)
  
          // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
          el.classList.toggle('is-active')
          $target.classList.toggle('is-active')
  
        })
      })
    }
  
})

/**
 * Post textarea submitting after keyboarding ENTER
 */
let textarea = document.querySelector('textarea.postarea'),
    postForm = document.querySelector('.post-form')
if (textarea) {
  textarea.focus()
  textarea.addEventListener("keydown", function (event) {
    if(event.key === 'Enter'){
      event.preventDefault()
      postForm.submit()
    }
  })
}


/**
 * 
 * POST PAGE - EMOJIS
 *
 */

let emojis = document.querySelectorAll('.emojis-menu li')

for (const emoji of emojis) {
  emoji.addEventListener("click", function(event){
    event.preventDefault()
    textarea.value += this.textContent
  })
}



/**
 * Notification alert closing
 */
let notificationDeleteButton = document.querySelector('button.delete')

if (notificationDeleteButton) {
  notificationDeleteButton.addEventListener('click', function (){
    this.parentElement.className += ' fade-me-out'
    setTimeout(() => {
      this.parentElement.remove()     
    }, 500)
  })
}

let alertBoxes = document.querySelectorAll('.alert')

if (alertBoxes) {
  setTimeout(() => {
    for (const alertBox of alertBoxes) {
      alertBox.className += ' fade-me-out'
    }
  }, 2000)

  setTimeout(() => {
    for (const alertBox of alertBoxes) {
      alertBox.remove()
    }   
  }, 2500)
}

    



