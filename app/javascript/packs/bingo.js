import Rails from "@rails/ujs";
function toggleActiveSquare(square){
    var classList = square.classList
    if (classList.contains("active")) {
        classList.remove("active")
    } else {
        classList.add("active")
    }
}
document.addEventListener("turbolinks:load", function() {
    var squares = document.querySelectorAll('.square') //get squares
    var boardId = window.location.pathname.replace('/boards/', '')

    squares.forEach(square => { //loop over squares
        square.addEventListener("click",function(e){ //add event listener on click to set item as active
            var el = e.target
            if (el.nodeName == "DIV") { //check if the div was clicked
                var idNum = el.id.replace('square-', '')
            } else if (el.nodeName == "SPAN"){
                el = el.parentElement
                var idNum = el.id.replace('square-', '')
            }
            
            var data = new URLSearchParams({id: idNum, boardId: boardId}).toString()

            Rails.ajax({
                url: "/squares/activate",
                type: "post",
                data: data,
                success: function(data){toggleActiveSquare(el)},
                error: function(data){alert("Something went wrong contact Deetss on discord")}
            })
            
        })
    });
})
