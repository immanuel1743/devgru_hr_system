function init(){
  console.log('sys : page load');
};

function dateNow() {
  $('.consulTime').attr('value', new Date().toISOString().slice(0, -1));
};

function dateEmpty() {
  $('.consulTime').attr('value', '');
};

function saveDevData() {
  if(!checkEmail($('.email'))) {
    $('.email').focus();
  }
};