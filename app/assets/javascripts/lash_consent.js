// Lash Consent events
var lashConsentHandler = (function() {
  var hideLastStepContinueBtn = function() {
    var wizardSteps = $('.step-pane').length;

    $('#myWizard').on('changed.fu.wizard', function(e, item) {
      var lastStep = (item.step === wizardSteps);
      $('.btn-next').attr('hidden', lastStep)
    })
  }

  return {
    hideLastStepContinueBtn: hideLastStepContinueBtn
  }
})();

$(document).ready(function () {
  lashConsentHandler.hideLastStepContinueBtn();
});