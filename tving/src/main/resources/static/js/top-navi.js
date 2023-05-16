const userIcon = document.getElementById("user-mypage-icon");
const userMypageContainer = document.getElementById("mypage-container");
const topSearchIcon = document.getElementById("top-search-icon");
const searchResultContainer = document.getElementById("search-container");


userIcon.onmouseover = () => {
    userMypageContainer.removeAttribute("hidden");
}
userMypageContainer.onmouseleave = () => {
    userMypageContainer.toggleAttribute( "hidden");
}
topSearchIcon.onclick = () => {
    searchResultContainer.toggleAttribute("hidden");
    console.log("ㅎㅇ")
}
