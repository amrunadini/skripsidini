const list_jawaban = document.querySelectorAll('#color-change')

for (let i = 0; i < list_jawaban.length; i++) {
// console.log(list_jawaban[i].innerHTML)
  // console.log(list_jawaban[i].innerHTML.search("bukan"))
  if(list_jawaban[i].innerHTML.search("bukan")!= -1){
    list_jawaban[i].style.color = 'red'
    // console.log(fontcolor)
  }
}

