$(document).ready(function(){
    
    function postHP() {
        $(".battleInfo").append(my_knight.hp);
        $(".battleInfo").append(my_dragon.hp);
    };
    
    postHP()

});