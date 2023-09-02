OtherInventoryType = null
ShiftPressed = false
ControlPressed = false
PlayerMaxWeight = 1
OtherMaxWeight = 1
Config = null
Bool = false
lecrew = []
$(document).ready(function(){
    $.get("../config/jsconfig.json", function(data) {
        if(data) Config = JSON.parse(data)
    })
    const crosss = document.querySelector(".allcheck-crosshair");
    crosss.checked = true
    const hudsssss = document.querySelector(".allcheck-user-hud");
    hudsssss.checked = true
    const loadoutss = document.querySelector(".allcheck");
    loadoutss.checked = true
    const killfeedsss = document.querySelector(".allcheck-user-killfeed");
    killfeedsss.checked = true
    const hitmarkertextss = document.querySelector(".allcheck-user-hit");
    hitmarkertextss.checked = true
    const hitsss = document.querySelector(".allcheck-user-hitsound");
    hitsss.checked = true
    const killsoundss = document.querySelector(".allcheck-user-killsound");
    killsoundss.checked = true
    const zombiesoundss = document.querySelector(".allcheck-user-zombiesound");
    zombiesoundss.checked = true
})

window.addEventListener("message", function(e) {
    const data = e.data
    if (data.type == "display") {
        Display(data)
    } else if (data.type == "update") {
        UpdateInventory(data)
    } else if (data.type == "hotbar") {
        SetHotbar(data.hotbar)
    } else if (data.type == "audroitefdp") {
        $("#name").html(data.name)
        $("#idunique").html(data.idunique)
        $("#pointss").html(data.point)
    } else if (data.type == "gfxprofile-main-contain") {
        $("#killssallahlepd").html(data.kill)
        $("#deathspourlez").html(data.death)
        $("#zomeallah").html(data.zombie)
        $("#kddeallah").html(data.kd)
        $("#leveldedieux").html(data.level)
        $("#profile-user-name").html(data.playernamebitch)
        $("#pointssssforgay").html(data.pointssssforgay)
        $("#pokemondelastreet").html(data.deathmatch)
        $("#allahjlevioleirl").html(data.deluxo)
        $("#zemmourlegoat2027").html(data.gungame)
        $("#name").html(data.name)
        $("#idunique").html(data.idunique)
        $("#pointss").html(data.point)
        Bool = data.bool
        lecrew = data.lecrew
    } else if (data.type == "deathmatch") {
        $("#pokemondelastreet").html(data.nb)
    } else if (data.type == "deluxo") {
        $("#allahjlevioleirl").html(data.nb)
    } else if (data.type == "gungame") {
        $("#zemmourlegoat2027").html(data.nb)
    } else if (data.type == "setup") {
        $("#pokemondelastreet").html(data.deathmatch)
        $("#allahjlevioleirl").html(data.deluxo)
        $("#zemmourlegoat2027").html(data.gungame)
    } else if (data.type == "fortnite") {
        $( "fortnite" ).removeClass( "display" );
    } else if (data.type == "showleader") {
        $(".deathmatchleader").fadeIn(250)
        $("#nameofplayers").html(data.lesnoiraufeu1)
        $(".killsofplayers").html(data.killallahpourdukd1)
        $("#nameofplayerss").html(data.lesnoiraufeu2)
        $(".killsofplayerss").html(data.killallahpourdukd2)
        $("#nameofplayersss").html(data.lesnoiraufeu3)
        $(".killsofplayersss").html(data.killallahpourdukd3)
        $("#nameofplayerssss").html(data.lesnoiraufeu4)
        $(".killsofplayerssss").html(data.killallahpourdukd4)
    } else if (data.type == "hideleader") {
        $(".deathmatchleader").fadeOut(250)
    } else if (data.type == "deathmatchleader") {
        $("#nameofplayers").html(data.lesnoiraufeu1)
        $(".killsofplayers").html(data.killallahpourdukd1)
        $("#nameofplayerss").html(data.lesnoiraufeu2)
        $(".killsofplayerss").html(data.killallahpourdukd2)
        $("#nameofplayersss").html(data.lesnoiraufeu3)
        $(".killsofplayersss").html(data.killallahpourdukd3)
        $("#nameofplayerssss").html(data.lesnoiraufeu4)
        $(".killsofplayerssss").html(data.killallahpourdukd4)
    } else if (data.type == "updateenbasjoueur") {
        $("#mdrrlenoirjelefouette").html(data.nb)
    } else if (data.type == "updateenbaskill") {
        $("#abcs").html(data.nb)
    } else if (data.type == "updatebois") {
        $("#allahjeluimetundoigtdanslecul").html(data.nb)
    } else if (data.type == "showgo") {
        $(".battleroyalecount").fadeIn(250)
        $(".alls").fadeIn(250)
    } else if (data.type == "showno") {
        $(".battleroyalecount").fadeOut(250)
        $(".alls").fadeOut(250)
    } else if (data.type == "ppsteam") {
        $(".progress-bar-image").attr("src", data.url)
    } else if (data.type == "updateleaderboard"){
        ListLeaderBoard(data.ldcdesblancs)
    } else if (data.type == "crewupdate") {
        $(".crew").fadeOut(250)
        $(".crewsystemall").fadeIn(250)
    } else if (data.type == "pourlecrewdallah") {
        Bool = data.bool
        lecrew = data.lecrew
    } else if (data.type == "crewsystemall") {
        console.log(data.numberscrewplayerdeallah)
        $("#killscrews").html(data.killscrews)
        $("#deathcrews").html(data.deathcrews)
        $("#killredezonecrews").html(data.killredezonecrews)
        $("#killdarkzonecrews").html(data.killdarkzonecrews)
        $("#airdropcrews").html(data.airdropcrews)
    } else if (data.type == "justelenameducrewenculer") {
        $("#namecrew").html(data.namecrew)
    } else if (data.type == "updatelecrewallahlefdp") {
        ListLeaderBoardCrew(data.lecrew)
    } else if (data.type == "updateallahlefdp") {
        ListLeaderBoardCrewMain(data.lecrew)
    }
})

function SetCurrentPage(str){
    if (str === "inventaire"){
        $(".gfxinv-main-contain").css("display", "flex")
        $(".boutique").css("display", "none")
        $(".gfxprofile-main-contain").css("display", "none")
        $(".settings").css("display", "none")
        $(".gfxlb-main-contain").css("display", "none")
        $(".help").css("display", "none")
        $(".crew").css("display", "none")
        $(".crewsystemall").css("display", "none")
        $(".membrescrew").css("display", "none")
        $(".kit").css("display", "none")
        $(".gfxlbcrew-main-contain").css("display", "none")
        $(".inviteforcrew").css("display", "none")
        $(".arena").css("display", "none")
        $(".market").css("display", "none")
        $(".inventaire").fadeIn(500)
    } else if (str === "boutique"){
        $(".gfxinv-main-contain").css("display", "none")
        $(".gfxprofile-main-contain").css("display", "none")
        $(".settings").css("display", "none")
        $(".market").css("display", "none")
        $(".gfxlb-main-contain").css("display", "none")
        $(".arena").css("display", "none")
        $(".kit").css("display", "none")
        $(".crew").css("display", "none")
        $(".gfxlbcrew-main-contain").css("display", "none")
        $(".inviteforcrew").css("display", "none")
        $(".crewsystemall").css("display", "none")
        $(".membrescrew").css("display", "none")
        $(".help").css("display", "none")
        $(".boutique").fadeIn(500)
    } else if (str === "gfxprofile-main-contain"){
        $(".gfxinv-main-contain").css("display", "none")
        $(".boutique").css("display", "none")
        $(".market").css("display", "none")
        $(".settings").css("display", "none")
        $(".gameplay").css("display", "none")
        $(".general").css("display", "none")
        $(".sound").css("display", "none")
        $(".gfxlb-main-contain").css("display", "none")
        $(".help").css("display", "none")
        $(".kit").css("display", "none")
        $(".gfxlbcrew-main-contain").css("display", "none")
        $(".crew").css("display", "none")
        $(".crewsystemall").css("display", "none")
        $(".inviteforcrew").css("display", "none")
        $(".membrescrew").css("display", "none")
        $(".arena").css("display", "none")
        $(".gfxprofile-main-contain").fadeIn(500)
    } else if (str === "market"){
        $(".gfxinv-main-contain").css("display", "none")
        $(".boutique").css("display", "none")
        $(".market").css("display", "none")
        $(".settings").css("display", "none")
        $(".gfxprofile-main-contain").css("display", "none")
        $(".kit").css("display", "none")
        $(".gfxlb-main-contain").css("display", "none")
        $(".help").css("display", "none")
        $(".gfxlbcrew-main-contain").css("display", "none")
        $(".crew").css("display", "none")
        $(".crewsystemall").css("display", "none")
        $(".membrescrew").css("display", "none")
        $(".inviteforcrew").css("display", "none")
        $(".arena").css("display", "none")
        $(".market").fadeIn(500)
    } else if (str === "settings"){
        $(".gfxinv-main-contain").css("display", "none")
        $(".boutique").css("display", "none")
        $(".market").css("display", "none")
        $(".gfxprofile-main-contain").css("display", "none")
        $(".kit").css("display", "none")
        $(".gfxlb-main-contain").css("display", "none")
        $(".crew").css("display", "none")
        $(".crewsystemall").css("display", "none")
        $(".membrescrew").css("display", "none")
        $(".inviteforcrew").css("display", "none")
        $(".gfxlbcrew-main-contain").css("display", "none")
        $(".help").css("display", "none")
        $(".arena").css("display", "none")
        $(".settings").fadeIn(500)
    } else if (str === "gfxlb-main-contain"){
        $(".gfxinv-main-contain").css("display", "none")
        $(".boutique").css("display", "none")
        $(".market").css("display", "none")
        $(".gfxprofile-main-contain").css("display", "none")
        $(".kit").css("display", "none")
        $(".settings").css("display", "none")
        $(".arena").css("display", "none")
        $(".inviteforcrew").css("display", "none")
        $(".crew").css("display", "none")
        $(".crewsystemall").css("display", "none")
        $(".membrescrew").css("display", "none")
        $(".help").css("display", "none")
        $(".gfxlbcrew-main-contain").css("display", "none")
        $(".gfxlb-main-contain").fadeIn(500)
    } else if (str === "arena"){
        $(".gfxinv-main-contain").css("display", "none")
        $(".boutique").css("display", "none")
        $(".market").css("display", "none")
        $(".gfxprofile-main-contain").css("display", "none")
        $(".settings").css("display", "none")
        $(".kit").css("display", "none")
        $(".inviteforcrew").css("display", "none")
        $(".help").css("display", "none")
        $(".crew").css("display", "none")
        $(".gfxlbcrew-main-contain").css("display", "none")
        $(".crewsystemall").css("display", "none")
        $(".membrescrew").css("display", "none")
        $(".gfxlb-main-contain").css("display", "none")     
        $(".arena").fadeIn(500)
    } else if (str === "gameplay"){
        $(".gfxinv-main-contain").css("display", "none")
        $(".boutique").css("display", "none")
        $(".market").css("display", "none")
        $(".gfxprofile-main-contain").css("display", "none")
        $(".gfxlb-main-contain").css("display", "none")
        $(".help").css("display", "none")
        $(".kit").css("display", "none")
        $(".inviteforcrew").css("display", "none")
        $(".general").css("display", "none")
        $(".crew").css("display", "none")
        $(".gfxlbcrew-main-contain").css("display", "none")
        $(".crewsystemall").css("display", "none")
        $(".membrescrew").css("display", "none")
        $(".sound").css("display", "none")
        $(".gameplay").fadeIn(500)
    } else if (str === "general"){
        $(".gfxinv-main-contain").css("display", "none")
        $(".boutique").css("display", "none")
        $(".market").css("display", "none")
        $(".gfxprofile-main-contain").css("display", "none")
        $(".gfxlb-main-contain").css("display", "none")
        $(".help").css("display", "none")
        $(".kit").css("display", "none")
        $(".gameplay").css("display", "none")
        $(".crew").css("display", "none")
        $(".inviteforcrew").css("display", "none")
        $(".gfxlbcrew-main-contain").css("display", "none")
        $(".crewsystemall").css("display", "none")
        $(".membrescrew").css("display", "none")
        $(".sound").css("display", "none")
        $(".general").fadeIn(500)
    } else if (str === "sound"){
        $(".gfxinv-main-contain").css("display", "none")
        $(".boutique").css("display", "none")
        $(".market").css("display", "none")
        $(".gfxprofile-main-contain").css("display", "none")
        $(".gfxlb-main-contain").css("display", "none")
        $(".help").css("display", "none")
        $(".kit").css("display", "none")
        $(".crew").css("display", "none")
        $(".inviteforcrew").css("display", "none")
        $(".general").css("display", "none")
        $(".gameplay").css("display", "none")
        $(".membrescrew").css("display", "none")
        $(".gfxlbcrew-main-contain").css("display", "none")
        $(".crewsystemall").css("display", "none")
        $(".sound").fadeIn(500)
    } else if (str === "help"){
        $(".gfxinv-main-contain").css("display", "none")
        $(".boutique").css("display", "none")
        $(".market").css("display", "none")
        $(".gfxprofile-main-contain").css("display", "none")
        $(".gfxlb-main-contain").css("display", "none")
        $(".settings").css("display", "none")
        $(".general").css("display", "none")
        $(".arena").css("display", "none")
        $(".gameplay").css("display", "none")
        $(".crew").css("display", "none")
        $(".inviteforcrew").css("display", "none")
        $(".gfxlbcrew-main-contain").css("display", "none")
        $(".kit").css("display", "none")
        $(".sound").css("display", "none")
        $(".membrescrew").css("display", "none")
        $(".crewsystemall").css("display", "none")
        $(".help").fadeIn(500)
    } else if (str === "crew"){
        $(".gfxinv-main-contain").css("display", "none")
        $(".boutique").css("display", "none")
        $(".market").css("display", "none")
        $(".gfxprofile-main-contain").css("display", "none")
        $(".gfxlb-main-contain").css("display", "none")
        $(".general").css("display", "none")
        $(".settings").css("display", "none")
        $(".arena").css("display", "none")
        $(".inviteforcrew").css("display", "none")
        $(".gameplay").css("display", "none")
        $(".kit").css("display", "none")
        $(".gfxlbcrew-main-contain").css("display", "none")
        $(".help").css("display", "none")
        $(".sound").css("display", "none")
        $(".crew").css("display", "none")
        $(".membrescrew").css("display", "none")
        $(".crewsystemall").css("display", "none")
        if (Bool) {
            $(".crewsystemall").fadeIn(500)
        } else {
            $(".crew").fadeIn(500)
        } 
    } else if (str === "kit"){
            $(".gfxinv-main-contain").css("display", "none")
            $(".boutique").css("display", "none")
            $(".market").css("display", "none")
            $(".gfxprofile-main-contain").css("display", "none")
            $(".gfxlb-main-contain").css("display", "none")
            $(".general").css("display", "none")
            $(".settings").css("display", "none")
            $(".arena").css("display", "none")
            $(".gameplay").css("display", "none")
            $(".help").css("display", "none")
            $(".sound").css("display", "none")
            $(".gfxlbcrew-main-contain").css("display", "none")
            $(".inviteforcrew").css("display", "none")
            $(".crew").css("display", "none")
            $(".membrescrew").css("display", "none")
            $(".crewsystemall").css("display", "none")
            $(".kit").fadeIn(500)
        } else if (str === "membrescrew"){
            $(".gfxinv-main-contain").css("display", "none")
            $(".boutique").css("display", "none")
            $(".market").css("display", "none")
            $(".gfxprofile-main-contain").css("display", "none")
            $(".gfxlb-main-contain").css("display", "none")
            $(".general").css("display", "none")
            $(".settings").css("display", "none")
            $(".arena").css("display", "none")
            $(".gameplay").css("display", "none")
            $(".help").css("display", "none")
            $(".sound").css("display", "none")
            $(".gfxlbcrew-main-contain").css("display", "none")
            $(".crew").css("display", "none")
            $(".crewsystemall").css("display", "none")
            $(".inviteforcrew").css("display", "none")
            $(".kit").css("display", "none")
            $(".membrescrew").fadeIn(500)
        } else if (str === "inviteforcrew"){
            $(".gfxinv-main-contain").css("display", "none")
            $(".boutique").css("display", "none")
            $(".market").css("display", "none")
            $(".gfxprofile-main-contain").css("display", "none")
            $(".gfxlb-main-contain").css("display", "none")
            $(".general").css("display", "none")
            $(".settings").css("display", "none")
            $(".arena").css("display", "none")
            $(".gameplay").css("display", "none")
            $(".market").css("display", "none")
            $(".gfxlbcrew-main-contain").css("display", "none")
            $(".help").css("display", "none")
            $(".sound").css("display", "none")
            $(".membrescrew").css("display", "none")
            $(".caseallcrew").css("display", "none")
            $(".gfxlbc-main-contain").css("display", "none")
            $(".kit").css("display", "none")
            $(".inviteforcrew").fadeIn(500)
        } else if (str === "gfxlbcrew-main-contain"){
            $(".gfxinv-main-contain").css("display", "none")
            $(".boutique").css("display", "none")
            $(".market").css("display", "none")
            $(".gfxprofile-main-contain").css("display", "none")
            $(".gfxlb-main-contain").css("display", "none")
            $(".general").css("display", "none")
            $(".settings").css("display", "none")
            $(".arena").css("display", "none")
            $(".gameplay").css("display", "none")
            $(".market").css("display", "none")
            $(".help").css("display", "none")
            $(".sound").css("display", "none")
            $(".kit").css("display", "none")
            $(".gfxlbcrew-main-contain").fadeIn(500)
        }
}
function ok(int){
    $.post('https://k9-inventory/buy', JSON.stringify({
        boutique: int
    }));
}

function oka(int){
    console.log("oi")
    if (int === 3){
        window.invokeNative('openUrl', "https://www.youtube.com/")
    } else {
        window.invokeNative('openUrl', "https://www.youtube.com/")
    }
}

function purchase(int){
    console.log("tebex")
        window.invokeNative('openUrl', "https://tebex.k9pvp.com/category/points")
    }

function opendiscord(){
    window.invokeNative('openUrl', "https://discord.gg/nz9PsEfF")
}

UpdateInventory = data => {
    if(data.inventory){
        LoadPlayerInventory(data.inventory)
    }
    if (data.otherInventory) {
        LoadOtherInventory(data.otherInventory, OtherInventoryType)
    }
    if (data.inventoryInfo) {
        SetInventorySettings(data.inventoryInfo)
    }
    handleDragDrop()
}

Display = data => {
    if (data.bool) {
        if (Config.SecondaryInventoryTypes[data.inventoryInfo.name]) {
            $(".gfxinv-main-contain").addClass("stash-active-main")
        } else {
            $(".gfxinv-main-contain").removeClass("stash-active-main")
        }
        $(".bg").show()
        $(".gfxinv-main-contain").css("display", "flex")
        LoadPlayerInventory(data.inventory)
        LoadOtherInventory(data.otherInventory, data.inventoryInfo.name)
        SetInventorySettings(data.inventoryInfo)
        handleDragDrop()
    } else {
        OtherInventoryType = null
        $(".bg").hide()
        $(".gfxinv-main-contain").css("display", "none")
        $(".boutique").css("display", "none")
        $(".gfxprofile-main-contain").css("display", "none")
        $(".market").css("display", "none")
        $(".settings").css("display", "none")
        $(".gfxlb-main-contain").css("display", "none")
        $(".gfxlbcrew-main-contain").css("display", "none")
        $(".gameplay").css("display", "none")
        $(".general").css("display", "none")
        $(".arena").css("display", "none")
        $(".sound").css("display", "none")
        $(".help").css("display", "none")
        $(".crew").css("display", "none")
        $(".crewsystemall").css("display", "none")
        $(".membrescrew").css("display", "none")
        $(".kit").css("display", "none")
    }
}

LoadPlayerInventory = inventory => {
    $(".gfxinv-player-inv > .gfxinv-inv-content > .gfxinv-item-slot").remove()
    $.each(inventory, function (k, v) { 
        const content = `
            <div class="gfxinv-item-slot ${v.rarity}-item" data-key=${v.name} data-itemdata=${JSON.stringify({itemName: v.name, itemCount: v.count, currentContainer: "inventory"})}>
                <div class="item-slot-state"></div>
                <div class="image-bg">
                    <img src=${v.image} alt="">
                </div>
                <div class="item-slot-info">
                    <h1>${v.label.toUpperCase()}</h1>
                   
                </div>
                <p class="item-count">x${v.count}</p>
            </div>
        `
        $(".gfxinv-player-inv > .gfxinv-inv-content").append(content);
    });
}

LoadOtherInventory = (otherInventory, inventoryType) => {
    $(".gfxinv-protected-inv > .gfxinv-inv-content > .gfxinv-item-slot").remove()
    $.each(otherInventory, function (k, v) { 
        const content = `
            <div class="gfxinv-item-slot ${v.rarity}-item" data-key=${v.name} data-itemdata=${JSON.stringify({itemName: v.name, itemCount: v.count, currentContainer: inventoryType})}>
                <div class="item-slot-state"></div>
                <div class="image-bg">
                    <img src=${v.image} alt="">
                </div>
                <div class="item-slot-info">
                    <h1>${v.label.toUpperCase()}</h1>
                    
                </div>
                <p class="item-count">x${v.count}</p>
            </div>
        `
        $(".gfxinv-protected-inv > .gfxinv-inv-content").append(content);
    });
}

SetInventorySettings = settings => {
    if (settings.label){
        $(".gfxinv-protected-inv > .gfxinv-inv-header > h1 > strong").html(settings.label.toUpperCase())
    }
    if (settings.name) {
        OtherInventoryType = settings.name
    }
    if (settings.otherInventoryWeight || settings.otherInventoryWeight == 0) {
        $(".gfxinv-protected-inv > .gfxinv-inv-header > .header-weight > .weight-text > p > .weight").html(settings.otherInventoryWeight)
        $(".gfxinv-protected-inv > .gfxinv-inv-header > .header-weight > .weight-text > p > .weight").html(settings.otherInventoryWeight)
    }
    if (settings.inventoryWeight || settings.inventoryWeight == 0) {
        $(".gfxinv-player-inv > .gfxinv-inv-header > .header-weight > .weight-text > p > .weight").html(settings.inventoryWeight)
    }
    if (settings.maxWeight || settings.maxWeight == 0) {
        OtherMaxWeight = settings.maxWeight
    }
    if (settings.invMax || settings.invMax == 0) {
        PlayerMaxWeight = settings.invMax
    }
    //$(".gfxinv-player-inv > .gfxinv-inv-header > .header-weight > .weight-text > p > .maxWeight").html(PlayerMaxWeight)
    //$(".gfxinv-protected-inv > .gfxinv-inv-header > .header-weight > .weight-text > p > .maxWeight").html(OtherMaxWeight)
    //$(".gfxinv-player-inv > .gfxinv-inv-header > .header-weight > .weight-progress > .progress").css("width", (settings.inventoryWeight / PlayerMaxWeight) * 100 + "%")
    //$(".gfxinv-protected-inv > .gfxinv-inv-header > .header-weight > .weight-progress > .progress").css("width", (settings.otherInventoryWeight / OtherMaxWeight) * 100 + "%")

}

SetHotbar = hotbar => {
    $(".gfxinv-hotbarinv-content > .gfxinv-item-slot").remove()
    for (let i = 0; i < 7; i++) {
        const v = hotbar[i]
        const content = `
            <div class="gfxinv-item-slot ${v && v.rarity && v.hasItem ? (v.rarity + "-item") : ""}" data-id="${i + 1}" name="hotbar">
                <div class="item-slot-state"></div>
                <div class="image-bg">
                    ${v && v.image && v.hasItem ? `<img src=${v.image} alt="">`:""}
                </div>
                <div class="item-slot-info">
                    <h1>${v && v.label && v.hasItem ? v.label:""}</h1>
                </div>
                <div class="hotbarslot-numbers">
                    <h1>${i + 1}</h1>
                </div>
            </div>
        `
        $(".gfxinv-hotbarinv-content").append(content);
    }
    handleDragDrop()
}

DragItem = (data) => {
    if (combatMode) return
    const toInventory = $(data.toType == "inventory" ? ".gfxinv-player-inv" : ".gfxinv-protected-inv").find(".gfxinv-inv-content")
    const fromInventory = $(data.fromType == "inventory" ? ".gfxinv-player-inv" : ".gfxinv-protected-inv").find(".gfxinv-inv-content")
    const toObject = toInventory.find(`[data-key=${data.itemName}]`)
    const fromObject = fromInventory.find(`[data-key=${data.itemName}]`)
    const fromData = fromObject.data("itemdata")
    const toData = toObject.data("itemdata")
    if (toObject && toData) {
        toData.itemCount += data.count
        toObject.find(".item-count").html("x"+toData.itemCount)
        toObject.data("itemdata", toData)
    } else {
        const content = `
            <div class="gfxinv-item-slot ${Items[data.itemName].rarity}-item" data-key=${data.itemName} data-itemdata=${JSON.stringify({itemName: data.itemName, itemCount: data.count, currentContainer: data.toType, weight: data.weight})}>
                <div class="item-slot-state"></div>
                <div class="image-bg">
                    <img class="item-slot-image" src=${Items[data.itemName].image} alt="">
                </div>
                <div class="item-slot-info">
                    <h1>${Items[data.itemName].label.toUpperCase()}</h1>
                 
                </div>
                <p class="item-count">x${data.count}</p>
            </div>
        `
        toInventory.append(content);
    }
    fromData.itemCount -= data.count
    if (fromData.itemCount <= 0) {
        fromObject.remove()
    } else {
        fromObject.find(".item-count").html("x"+fromData.itemCount)
        fromObject.data("itemdata", fromData)
    }
    $.post("https://gfx-inventory/ItemDrag", JSON.stringify(data));
    
    handleDragDrop()
}

var DraggingData = null
function handleDragDrop(){
    $(".gfxinv-inv-content > .gfxinv-item-slot").draggable({
        helper: 'clone',
        appendTo: "body",
        scroll: true,
        revertDuration: 0,
        revert: "invalid",
        cancel: ".item-nodrag",
        start: function(event, ui) {
            DraggingData = $(this).data("itemdata")
            
            
            // $(".ui-draggable-handle > .item-slot-state").addClass()
        },    
        stop: function() {
            DraggingData = null
        },
    });

    $(".gfxinv-inv-content > .gfxinv-item-slot").draggable({
        helper: 'clone',
        appendTo: "body",
        scroll: false,
        revertDuration: 0,
        revert: "invalid",
        cancel: ".item-nodrag",
        start: function(event, ui) {
            DraggingData = $(this).data("itemdata")
        },    
        stop: function() {
            DraggingData = null
        },
    });
    $(".gfxinv-player-inv").droppable({
        hoverClass: 'item-slot-hoverClass',
        drop: function(event, ui) {
            if(DraggingData["currentContainer"] != "inventory") {
                $.post("https://k9-inventory/ItemDrag", JSON.stringify({itemName: DraggingData["itemName"], count: 1, fromType: OtherInventoryType, toType: "inventory"}));
            }
        },
    });

    $(".gfxinv-protected-inv").droppable({
        hoverClass: 'item-slot-hoverClass',
        drop: function(event, ui) {
            if(OtherInventoryType && OtherInventoryType != DraggingData["currentContainer"]) {
                $.post("https://k9-inventory/ItemDrag", JSON.stringify({itemName: DraggingData["itemName"], count: 1, fromType: "inventory", toType: OtherInventoryType}));
            }
        },
    });

    $(".gfxinv-hotbar-inv > .gfxinv-hotbarinv-content > .gfxinv-item-slot").droppable({
        hoverClass: 'item-slot-hoverClass',
        drop: function(event, ui) {
            $.post("https://k9-inventory/SetHotbar", JSON.stringify({id: $(this).data("id"), itemName: DraggingData["itemName"]}));
        },
    });
}

ShiftOrControlCount = itemData => {
    let count = 1
    if (ShiftPressed) {
        count = itemData.itemCount >= 5 ? 5 : itemData.itemCount
    } else if (ControlPressed) {
        count = itemData.itemCount
    }
    return count
}

$(document).on("contextmenu", ".gfxinv-item-slot", function(e){
    const itemData = $(this).data("itemdata")
    const isHotbar = $(this).attr("name") == "hotbar"
    if (!isHotbar) {
        const count = ShiftOrControlCount(itemData)
        $.post("https://k9-inventory/ItemDrag", JSON.stringify({itemName: itemData["itemName"], count: count, fromType: itemData.currentContainer, toType: OtherInventoryType == itemData.currentContainer ? "inventory" : OtherInventoryType}));
    } else {
        $.post("https://k9-inventory/SetHotbar", JSON.stringify({id: $(this).data("id"), itemName: false}));
    }
})

$(document).on("dblclick", ".gfxinv-item-slot", function(e){
    const itemData = $(this).data("itemdata")
    const isHotbar = $(this).attr("name") == "hotbar"
    if (!isHotbar) {
        const count = ShiftOrControlCount(itemData)
        $.post("https://k9-inventory/RemoveItem", JSON.stringify({itemName: itemData["itemName"], count: count, fromType: itemData.currentContainer}));
    }
})

$(document).on("keydown", function(e){
    switch (e.which) {
        case 16:
            ShiftPressed = true
            break;
        case 17:
            ControlPressed = true
            break;
    }
})

const HotBarKeys = {
    49: 1,
    50: 2,
    51: 3,
    52: 4,
    53: 5,
    54: 6,
    55: 7
}

MouseData = null
$(document).on("keyup", function(e){
    switch (e.which) {
        case 16:
            ShiftPressed = false
            break;
        case 17:
            ControlPressed = false
            break;
    }
    $.each(HotBarKeys, function (k, v) { 
        if (e.which == k && MouseData) {
            $.post("https://k9-inventory/SetHotbar", JSON.stringify({id: v, itemName: MouseData.itemName}));
        }
    });
    $.each(Config.CloseKeys, function (k, v) { 
        if (e.key == v) {
            $.post("https://k9-inventory/Close");
        }
    });
})

$(document).on("mouseenter", ".gfxinv-item-slot", function(){
    const itemData = $(this).data("itemdata")
    MouseData = itemData
})

$(document).on("mouseleave", ".gfxinv-item-slot", function(){
    MouseData = null
})


function language(lang) {
    const langs = document.querySelector(".languageselect");
    var langssss = langs.options[langs.selectedIndex].value;
    $.post("https://k9-inventory/language", JSON.stringify({lang :  langssss}))
}

function playntm(int){
    $.post("https://k9-inventory/play", JSON.stringify({zemmour : int}))
}

function leavefdp(int) {
    $.post("https://k9-inventory/leavea", JSON.stringify({chiara : int}))
}

function leavecrew() {
    Bool = false
    $(".crewsystemall").css("display", "none")
    $(".crew").fadeIn(500)
    $.post("https://k9-inventory/leavecrew", JSON.stringify({nicolasbigot : 1}))
}

ListLeaderBoard = (array) => {
    $(".lb-content-contain > .lbrow-item").remove();
    for (let i = 0; i < array.length; i++) {
        if (i <= 100){
            const element = array[i];
            if (element) {
                const content = `
                    <div class="lbrow-item">
                        <h1>${i + 1}</h1>
                        <p>${element.n} </p>
                        <p>${element.k}</p>
                        <p>${element.d}</p>
                        <p>${element.d == 0 ? 1 : (element.k / element.d).toFixed(2)}</p>
                    </div>
                    `;
            $(".lb-content-contain").append(content);      
           }
        }
     }
  };
  
function checkAlert(evt, idunique) {
  if (evt.target.value === "Promouvoir") {
    $.post("https://k9-inventory/promucrew", JSON.stringify({nicolasbigot : idunique}))
  } else if (evt.target.value === "Kick") {
      $.post("https://k9-inventory/kickcrew", JSON.stringify({nicolasbigot : idunique}))
  } else if (evt.target.value === "Retrograde") {
      $.post("https://k9-inventory/retrogradecrew", JSON.stringify({nicolasbigot : idunique}))
  }
}
  
  ListLeaderBoardCrew = (array) => {
    $(".lbc-content-contain > .lbcrow-item").remove();
    for (let i = 0; i < array.length; i++) {

            const element = array[i];
            if (element) {
                if (element.mygroup >= 2 & element.mygroup > element.grade){
                    content = `
                    <div class="lbcrow-item">
                        <h1>${element.s}</h1>
                        <p>${element.nc} </p>
                        <p>${element.st}</p>
                        <p>${element.r}</p>
                        <p><select class="manage" name="Action" id="Action" onchange="checkAlert(event, ${element.s})">
                            <option value="action" id="ZA" style="display: none;">Action</option>
                            <option value="Promouvoir" id="ZAA">Promouvoir</option>
                            <option value="Retrograde" id="ZAA">Rétrogradé</option>
                            <option value="Kick" id="ZAAA">Kick</option>
                        </select></p>
                    </div>
                    `;
                } else {
                    content = `
                    <div class="lbcrow-item">
                        <h1>${element.s}</h1>
                        <p>${element.nc} </p>
                        <p>${element.st}</p>
                        <p>${element.r}</p>
                        <p></p>
                    </div>
                    `;
                }
                
            $(".lbc-content-contain").append(content);      
           }
     }
  };
  
    ListLeaderBoardCrewMain = (array) => {
    $(".lbcrew-content-contain > .lbcrewrow-item").remove();
    for (let i = 0; i < array.length; i++) {
        if (i <= 100){
            const element = array[i];
            if (element) {
                const content = `
                    <div class="lbcrewrow-item">
                        <h1>${i + 1}</h1>
                        <p>${element.cn} </p>
                        <p>${element.tk}</p>
                        <p>${element.td}</p>
                        <p>${element.tr}</p>
                        <p>${element.tz}</p>
                        <p>${element.ta}</p>
                    </div>
                    `;
            $(".lbcrew-content-contain").append(content);      
           }
        }
     }
  };

// -------------------------------------------------------------------------------------
// ------------------------------------- LANGUAGE --------------------------------------
// -------------------------------------------------------------------------------------

function changeText(language) {
    var buttonLabels = {
      'en': ['INVENTORY', 'PROFILE', 'ARENA', 'KIT', 'RANK', 'SETTINGS'],
      'fr': ['INVENTAIRE', 'PROFIL', 'ARENE', 'KIT', 'RANG', 'PARAMÈTRES'],
      'tr': ['ENVANTER', 'PROFİL', 'ARENA', 'TAKIM', 'RÜTBE', 'AYARLAR'],
      'es': ['INVENTARIO', 'PERFIL', 'ARENA', 'KIT', 'RANGO', 'CONFIGURACIÓN']
    };

    var buttons = document.getElementsByClassName('my-button');
    for (var i = 0; i < buttons.length; i++) {
      var button = buttons[i];
      var currentPage = button.getAttribute('onclick').split("'")[1];
      var index = ['inventaire', 'profil', 'arena', 'kit', 'boutique', 'settings'].indexOf(currentPage);
      if (index !== -1) {
        button.textContent = buttonLabels[language][index];
      }
    }

    switch (language) {
      case 'en':
        document.getElementById('armorHitSoundLabel').textContent = 'ARMOR HIT SOUND';
        document.getElementById('inventoryTitle').textContent = 'INVENTORY';
        document.getElementById('protectedContainerTitle').textContent = 'PROTECTED CONTAINER';
        document.getElementById('shortcutTitle').textContent = 'SHORTCUT';
        document.getElementById('dea').textContent = 'Death';
        document.getElementById('ok').textContent = 'Kills';
        document.getElementById('gameplayButton').textContent = 'GAMEPLAY';
        document.getElementById('generalButton').textContent = 'GENERAL';
        document.getElementById('soundButton').textContent = 'SOUNDS';
        document.getElementById('languageLabel').textContent = 'LANGUAGE';
        document.getElementById('crosshairLabel').textContent = 'CROSSHAIR';
        document.getElementById('hitmarkerSoundLabel').textContent = 'HITMARKER SOUND';
        document.getElementById('healthHitSoundLabel').textContent = 'HEALTH HIT SOUND';
        document.getElementById('soundOption1').textContent = 'SOUND 1';
        document.getElementById('soundOption2').textContent = 'SOUND 2';
        document.getElementById('soundOption3').textContent = 'SOUND 1';
        document.getElementById('soundOption4').textContent = 'SOUND 2';
        break;
      case 'fr':
        document.getElementById('armorHitSoundLabel').textContent = 'SON DU HITMARKER DANS LE KEVLAR';
        document.getElementById('inventoryTitle').textContent = 'INVENTAIRE';
        document.getElementById('protectedContainerTitle').textContent = 'CONTENEUR PROTÉGÉ';
        document.getElementById('shortcutTitle').textContent = 'RACCOURCI';
        document.getElementById('dea').textContent = 'Mort';
        document.getElementById('ok').textContent = 'Éliminations';
        document.getElementById('gameplayButton').textContent = 'GAMEPLAY';
        document.getElementById('generalButton').textContent = 'GÉNÉRAL';
        document.getElementById('soundButton').textContent = 'SONS';
        document.getElementById('languageLabel').textContent = 'LANGUE';
        document.getElementById('crosshairLabel').textContent = 'VISEUR';
        document.getElementById('hitmarkerSoundLabel').textContent = 'SON DU HITMARKER';
        document.getElementById('healthHitSoundLabel').textContent = 'SON DU HITMARKER DANS LA VIE';
        document.getElementById('soundOption1').textContent = 'SON 1';
        document.getElementById('soundOption2').textContent = 'SON 2';
        document.getElementById('soundOption3').textContent = 'SON 1';
        document.getElementById('soundOption4').textContent = 'SON 2';
        break;
      case 'tr':
        document.getElementById('armorHitSoundLabel').textContent = 'ZIRH VURUŞ SESI';
        document.getElementById('inventoryTitle').textContent = 'ENVANTER';
        document.getElementById('protectedContainerTitle').textContent = 'KORUMALI KONTEYNER';
        document.getElementById('shortcutTitle').textContent = 'KIYI KESİMİ';
        document.getElementById('dea').textContent = 'Ölüm';
        document.getElementById('ok').textContent = 'Öldürür';
        document.getElementById('gameplayButton').textContent = 'OYUN PLANI';
        document.getElementById('generalButton').textContent = 'GENEL';
        document.getElementById('soundButton').textContent = 'SESLER';
        document.getElementById('languageLabel').textContent = 'DİL';
        document.getElementById('crosshairLabel').textContent = 'artı işareti';
        document.getElementById('hitmarkerSoundLabel').textContent = 'HITMARKER SES';
        document.getElementById('healthHitSoundLabel').textContent = 'SAĞLIK VURUŞ SESI';
        document.getElementById('soundOption1').textContent = 'SES 1';
        document.getElementById('soundOption2').textContent = 'SES 2';
        document.getElementById('soundOption3').textContent = 'SES 1';
        document.getElementById('soundOption4').textContent = 'SES 2';
        break;
      case 'es':
        document.getElementById('armorHitSoundLabel').textContent = 'SONIDO DEL HITMARKER EN EL KEVLAR';
        document.getElementById('inventoryTitle').textContent = 'INVENTARIO';
        document.getElementById('protectedContainerTitle').textContent = 'CONTENEDOR PROTEGIDO';
        document.getElementById('shortcutTitle').textContent = 'ATAJO';
        document.getElementById('dea').textContent = 'Muertes';
        document.getElementById('ok').textContent = 'Eliminaciones';
        document.getElementById('gameplayButton').textContent = 'JUGABILIDAD';
        document.getElementById('generalButton').textContent = 'GENERAL';
        document.getElementById('soundButton').textContent = 'SONIDOS';
        document.getElementById('languageLabel').textContent = 'IDIOMA';
        document.getElementById('crosshairLabel').textContent = 'Visor';
        document.getElementById('hitmarkerSoundLabel').textContent = 'SONIDO DEL HITMARKER';
        document.getElementById('healthHitSoundLabel').textContent = 'EL SONIDO DEL HITMARKER EN LA VIDA';
        document.getElementById('soundOption1').textContent = 'SONIDO 1';
        document.getElementById('soundOption2').textContent = 'SONIDO 2';
        document.getElementById('soundOption3').textContent = 'SONIDO 1';
        document.getElementById('soundOption4').textContent = 'SONIDO 2';
        break;
      default:
        document.getElementById('armorHitSoundLabel').textContent = 'Unsupported language.';
        document.getElementById('inventoryTitle').textContent = 'INVENTORY';
        document.getElementById('protectedContainerTitle').textContent = 'PROTECTED CONTAINER';
        document.getElementById('shortcutTitle').textContent = 'SHORTCUT';
        document.getElementById('dea').textContent = 'Death';
        document.getElementById('ok').textContent = 'Kills';
        document.getElementById('gameplayButton').textContent = 'GAMEPLAY';
        document.getElementById('generalButton').textContent = 'GENERAL';
        document.getElementById('soundButton').textContent = 'SOUNDS';
        document.getElementById('languageLabel').textContent = 'LANGUAGE';
        document.getElementById('crosshairLabel').textContent = 'CROSSHAIR';
        document.getElementById('hitmarkerSoundLabel').textContent = 'HITMARKER SOUND';
        document.getElementById('healthHitSoundLabel').textContent = 'HEALTH HIT SOUND';
        document.getElementById('soundOption1').textContent = 'SOUND 1';
        document.getElementById('soundOption2').textContent = 'SOUND 2';
        document.getElementById('soundOption3').textContent = 'SOUND 1';
        document.getElementById('soundOption4').textContent = 'SOUND 2';
    }
  }
  
function createcrewaccept() {
    var po = document.getElementById('allahnexistepas').value
    var pom = document.getElementById('allahestpetit').value
    console.log(po, pom)
    if (po != "" & pom != "") {
        $.post("https://k9-inventory/ntmallah", JSON.stringify({
            name : po,
            tag : pom,
        }))
    }
}

function inviteplayercrew() {
    var pozz = document.getElementById('ntmlaputeallahh').value
    $.post("https://k9-inventory/invitecrew", JSON.stringify({id :  pozz}))
}

document.addEventListener('keydown', function(event) {
    if (event.keyCode === 32) {
      event.preventDefault();
    }
  });
  
  
  
  
function crosshair() {
    const crosssss = document.querySelector(".allcheck-crosshair");
    $.post("https://k9-inventory/crosshairssss", JSON.stringify({check : crosssss.checked}))
}


function language(lang) {
    const langs = document.querySelector(".languageselect");
    var langssss = langs.options[langs.selectedIndex].value;
    $.post("https://k9-inventory/language", JSON.stringify({lang :  langssss}))
}

function hud() {
    const hudsssss = document.querySelector(".allcheck-user-hud");
    $.post("https://k9-inventory/hudssss", JSON.stringify({check : hudsssss.checked}))
}


function hit() {
    const hitsss = document.querySelector(".allcheck-user-hitsound");
    $.post("https://k9-inventory/hitsss", JSON.stringify({check : hitsss.checked}))
}

function hitmarkertext() {
    const hitmarkertextss = document.querySelector(".allcheck-user-hit");
    $.post("https://k9-inventory/hitsss", JSON.stringify({check : hitmarkertextss.checked}))
}

function killfeed() {
    const killfeedsss = document.querySelector(".allcheck-user-killfeed");
    $.post("https://k9-inventory/killfeedsss", JSON.stringify({check : killfeedsss.checked}))
}

function loadout() {
    const loadoutss = document.querySelector(".allcheck");
    $.post("https://k9-inventory/loadouts", JSON.stringify({check : loadoutss.checked}))
}

function disablechat() {
    const disablechatss = document.querySelector(".allcheck");
    $.post("https://k9-inventory/disablechats", JSON.stringify({check : disablechatss.checked}))
}

function killsound() {
    const killsoundss = document.querySelector(".allcheck-user-killsound");
    $.post("https://k9-inventory/killsounds", JSON.stringify({check : killsoundss.checked}))
}

function zombiesound() {
    const zombiesoundss = document.querySelector(".allcheck-user-zombiesound");
    $.post("https://k9-inventory/zombiesounds", JSON.stringify({check : zombiesoundss.checked}))
}