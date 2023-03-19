window.addEventListener('load', () => {
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("input", () =>{
    const inputValue = priceInput.value;
    const addtaxDom = document.getElementById("add-tax-price");
    addtaxDom.innerHTML = Math.floor(inputValue * 0.1);
    const pricecontentDom = document.getElementById("profit");
    pricecontentDom.innerHTML = Math.floor(inputValue - inputValue * 0.1 );
  });
});