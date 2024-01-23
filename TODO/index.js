const submitBtn = document.querySelector('.submit');
const ul = document.querySelector('ul');
const todo = document.querySelector('input');

submitBtn.addEventListener('click', () => {
    if(todo.value.length > 0) {
        const li = document.createElement('li');
        li.innerHTML = `${todo.value} <button>delete</button>`;
        ul.prepend(li);
        todo.value = "";
    } else {
        alert("Please provid a valid input")
    }
})

ul.addEventListener('click', e => {
    if(e.target.tagName = 'LI'){
        e.target.parentElement.remove();
    }
})