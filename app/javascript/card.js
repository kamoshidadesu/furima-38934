const pay = () => {
  const payjp = Payjp('pk_test_ed21a9603834d1823075ec28')// PAY.JPテスト公開鍵
  const elements = payjp.elements();
  const numberElement = elements.create('cardNumber');
  const expiryElement = elements.create('cardExpiry');
  const cvcElement = elements.create('cardCvc');

  numberElement.mount('#number-form');
  expiryElement.mount('#expiry-form');
  cvcElement.mount('#cvc-form');

  const submit = document.getElementById("button");
  submit.addEventListener("click", (e) => {
    e.preventDefault();
    payjp.createToken(numberElement).then(function (response) {
      if (response.error) {
      } else {
        const token = response.id;
        console.log(token)
      }
    });
  });
};

window.addEventListener("load", pay);