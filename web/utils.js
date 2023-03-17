function changeVisibility (btnInd) {
    var imagesBtn = document.getElementsByClassName('images-btn')[btnInd];
    var imagesWrapper = document.getElementsByClassName('small-images-wrapper')[btnInd];

    if (imagesWrapper.classList.contains("no-display")) {
        imagesWrapper.classList.remove("no-display");
        imagesBtn.innerText = "Hide photos";
    } else {
        imagesWrapper.classList.add("no-display");
        imagesBtn.innerText = "Show more photos";
    }
}

function showCreateForm(){
    var createForm = document.getElementsByClassName('uploader')[0];
    var searchForm = document.getElementsByClassName('searchBar')[0];
    var create_btn = document.getElementById('main-create-post-btn');
    var search_btn = document.getElementById('main-search-btn');
    if (createForm.classList.contains("no-display")) {
        createForm.classList.remove("no-display"); 
        create_btn.style.backgroundColor = "#f99842";
        search_btn.style.backgroundColor = "grey";
        searchForm.classList.add("no-display");
    } else {
        createForm.classList.add("no-display");
        create_btn.style.backgroundColor = "grey";
    }
}

function showSearchForm() {
    var createForm = document.getElementsByClassName('uploader')[0];
    var searchForm = document.getElementsByClassName('searchBar')[0];
    var create_btn = document.getElementById('main-create-post-btn');
    var search_btn = document.getElementById('main-search-btn');

    if (searchForm.classList.contains("no-display")) {
        searchForm.classList.remove("no-display"); 
        createForm.classList.add("no-display");
        search_btn.style.backgroundColor = "#f99842";
        create_btn.style.backgroundColor = "grey";
    } else {
        searchForm.classList.add("no-display");
        search_btn.style.backgroundColor = "grey";
    }
}

function showPreview(btnInd) {
    var album_wrapper = document.getElementsByClassName('album-content-wrapper')[btnInd];
    var previewBtn = document.getElementsByClassName('preview-btn')[btnInd];

    if(album_wrapper.classList.contains("no-display")) {
        album_wrapper.classList.remove("no-display"); 
        previewBtn.style.backgroundColor = "#f99842";
    } else {
        album_wrapper.classList.add("no-display"); 
        previewBtn.style.backgroundColor = "grey";
    }
}