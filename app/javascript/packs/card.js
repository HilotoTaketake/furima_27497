const pay = () => {
  Payjp.setPublicKey(process.env.PAYJP_PUBLIC_KEY);
  const form = document.getElementById("charge-form");
  form.addEventListener("submit", (e) => {
    e.preventDefault();

    const formResult = document.getElementById("charge-form");
    const formData = new FormData(formResult);

    const card = {
      number: $("#transaction_name").val(),
      cvc: $("#transaction_transaction_cvc").val(),
      exp_month: $("#transaction_transaction_exp_month").val(),
      exp_year: `20${$("#transaction_transaction_exp_year").val()}`,
    };
    Payjp.createToken(card, (status, response) => {
      if (status === 200) {
        const token = response.id;
        const renderDom = document.getElementById("charge-form");
        const tokenObj = `<input value=${token} type="hidden" name='token'>`;
        renderDom.insertAdjacentHTML("beforeend", tokenObj);

        document.getElementById("transaction_name").removeAttribute("name");
        document.getElementById("transaction_transaction_cvc").removeAttribute("name");
        document.getElementById("transaction_transaction_exp_month").removeAttribute("name");
        document.getElementById("transaction_transaction_exp_year").removeAttribute("name");

        document.getElementById("charge-form").submit();
        document.getElementById("charge-form").reset();
      } else {
      }
    });
  });
};

window.addEventListener("load", pay);