//fichier de scipt pour faire apparaitre le menu de navigation

const liste = document.querySelector('.liste');
const btnResponsive = document.querySelector('.btn-responsive');

btnResponsive.addEventListener('click',() => {
    liste.classList.toggle('show');
})