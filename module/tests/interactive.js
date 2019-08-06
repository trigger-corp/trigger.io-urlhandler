module("forge.urlhandler");

if (forge.is.mobile()) {
    asyncTest("urlhandler", 1, function() {
        forge.urlhandler.urlLoaded.addListener(function () {
            ok(true, "Event recieved");
            start();
        });
        askQuestion("Click the link on the webpage that opens", { Ok: function () {
            window.location.href = "https://ops.trigger.io/75d92dce/tests/link.htm";
        }});
    });
}
