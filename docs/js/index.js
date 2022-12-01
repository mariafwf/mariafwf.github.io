let entries = ["morrie", "test"]


let list = document.getElementById("main");

for (let entry of entries) {
    
    let entryDiv = document.createElement("div");
    entryDiv.classList.add("entry");
    let entryLink = document.createElement("a");
    entryLink.setAttribute("href", "entries/morrie.html")
    entryLink.innerHTML = "<span class='hyperspan'></span>";
    entryDiv.innerHTML += "<span>Tuesdays With Morrie</span><br /><br /><span>by Mitch Albom</span>";
    entryDiv.append(entryLink);
    list.append(entryDiv);
}