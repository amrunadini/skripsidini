const list_items = document.querySelectorAll('.list-item');
const lists = document.querySelectorAll('.list');
const target = document.querySelectorAll('#target-container')
const source = document.querySelector('#source-container')
const btn_submit = document.querySelector('#btn-submit-custom')
// console.log(jawaban)
let itemcount;
let draggedItem = null;
let noitem;

for (let i = 0; i < list_items.length; i++) {
  const item = list_items[i];
  item.addEventListener('dragstart', function () {
    draggedItem = item;
  
  })
  item.addEventListener('dragend', function () {
    
    for(let k = 0; k < target.length; k++){
      if (target[k].children.length <= 1) {
        setTimeout(function () {
          draggedItem = null;
        }, 0)} else {
         
          source.appendChild(item)
        }
    }
  })
  for (let j = 0; j < lists.length; j++) {
    const list = lists[j];
    list.addEventListener('dragover', function (e) {
      e.preventDefault();
    });
    list.addEventListener('dragenter', function (e) {
      e.preventDefault();
      this.style.backgroundColor = 'rgba(0,0,0,2)';
    });
    list.addEventListener('dragleave', function (e) {
      this.style.backgroundColor = '#ccc';
    });
    list.addEventListener('drop', function (e) {
      this.append(draggedItem);
      // noitem=j;
      // console.log(noitem)
      let i = j+1
      draggedItem.children[1].name = 'kolom'+i

      //  console.log(draggedItem.children);
      this.style.backgroundColor = '#ccc';
      itemcount =0;
      for (let l = 0; l < target.length; l++) {
        if (target[l].children.length != 0) {
          itemcount=itemcount+1;
          // console.log(target[l].children[1]);
      }
      if(itemcount === target.length){
        btn_submit.style.display = 'block';
        
      }else{
        btn_submit.style.display = 'none';
      }
      // console.log(itemcount)
    }
    })
  }


}