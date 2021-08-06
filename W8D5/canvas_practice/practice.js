document.addEventListener("DOMContentLoaded", function(){
    
    const antvas = document.getElementById('mycanvas');
    antvas.width = 500;
    antvas.height = 500;
    const ctx = antvas.getContext('2d');
    ctx.fillStyle = "red";
    ctx.fillRect(100, 100, 400, 400);

    ctx.beginPath();
    ctx.arc(300, 300, 50, 0, 2 * Math.PI);
    ctx.stroke();
    ctx.strokeStyle = "black";
    ctx.fillStyle = "black";
    ctx.fill();

    //phase 4

    ctx.beginPath();
    ctx.arc(75, 175, 50, 0, Math.PI * 2, true); // Outer circle
    ctx.moveTo(110, 75);
    ctx.arc(75, 175, 35, 0, Math.PI, false);  // Mouth (clockwise)
    ctx.moveTo(65, 65);
    ctx.arc(60, 165, 5, 0, Math.PI * 2, true);  // Left eye
    ctx.moveTo(95, 65);
    ctx.arc(90, 165, 5, 0, Math.PI * 2, true);  // Right eye
    ctx.stroke();

});
