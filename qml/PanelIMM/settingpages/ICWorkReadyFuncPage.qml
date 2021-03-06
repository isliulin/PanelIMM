import QtQuick 1.1
import "../../ICCustomElement"
import "../immcustomitems"
ICIMMFunctionPageBase {
    id:instance
    property variant detailsMenuItems: {
        "f6":qsTr("Temp"),
                "f7":qsTr("Tune Mold"),
    }
    function onF6Triggered(){
        return "ICTemperatureCVMonitorPage.qml";
    }

    function onF7Triggered(){
        return "ICTuneMoldCVMonitorPage.qml";
    }

    ICSettingPageBase{
        id:workReadyPage1
        width: parent.width
        height: parent.height
        onEditorFocusChanged: {
            instance.editorFocusChanged(now);
        }
        ICIMMSettingConfigsScope{
            ICIMMFrame{
                //                title: qsTr("Clear Materia")
                id:topRow
                width: workReadyPage1.width
                height: workReadyPage1.height * 0.55 - y
                Grid{
                    id:chargeContainer
                    x:4
                    y:2
                    columns: 5
                    ICIMMText{text: qsTr("CHARGE")}
                    ICIMMText{text: qsTr("PRES")}
                    ICIMMText{text: qsTr("SPE")}
                    ICIMMText{text: qsTr("B-P")}
                    ICIMMText{text: qsTr("POSN")}

                    ICIMMText{}
                    ICIMMText{text: qsTr("(bar)")}
                    ICIMMText{text: qsTr("(%)")}
                    ICIMMText{text: qsTr("(bar)")}
                    ICIMMText{text: qsTr("(mm)")}

                    ICIMMText{text: qsTr("B.S.B")}
                    ICIMMLineEdit{
                        id:m_rw_17_15_1_285
                        configAddr: "m_rw_17_15_1_285"
                        objectName: "0"
                    }
                    ICIMMLineEdit{
                        id:m_rw_0_10_1_286
                        configAddr: "m_rw_0_10_1_286"
                        objectName: "1"
                    }
                    ICIMMText{}
                    ICIMMLineEdit{
                        id:m_rw_0_17_2_285
                        configAddr: "m_rw_0_17_2_285"
                        objectName: "2"
                    }

                    ICIMMText{text:qsTr("SEC1")}
                    ICIMMLineEdit{
                        id:m_rw_17_15_1_261
                        configAddr: "m_rw_17_15_1_261"
                    }
                    ICIMMLineEdit{
                        id:m_rw_0_10_1_262
                        configAddr: "m_rw_0_10_1_262"
                    }
                    ICIMMLineEdit{
                        id:m_rw_0_16_0_279
                        configAddr: "m_rw_0_16_0_279"
                    }
                    ICIMMLineEdit{
                        id:m_rw_0_17_2_261
                        configAddr: "m_rw_0_17_2_261"
                    }

                    ICIMMText{text:qsTr("SEC2")}
                    ICIMMLineEdit{
                        id:m_rw_17_15_1_265
                        configAddr: "m_rw_17_15_1_265"
                    }
                    ICIMMLineEdit{
                        id:m_rw_0_10_1_266
                        configAddr: "m_rw_0_10_1_266"
                    }
                    ICIMMLineEdit{
                        id:m_rw_16_16_0_279
                        configAddr: "m_rw_16_16_0_279"
                    }
                    ICIMMLineEdit{
                        id:m_rw_0_17_2_265
                        configAddr: "m_rw_0_17_2_265"
                    }

                    ICIMMText{text:qsTr("A.S.B")}
                    ICIMMLineEdit{
                        id:m_rw_17_15_1_292
                        configAddr: "m_rw_17_15_1_292"
                    }
                    ICIMMLineEdit{
                        id:m_rw_0_10_1_293
                        configAddr: "m_rw_0_10_1_293"
                    }
                    ICIMMText{}
                    ICIMMLineEdit{
                        id:m_rw_0_17_2_292
                        configAddr: "m_rw_0_17_2_292"
                    }
                }

                ICVerSplitLine{
                    id:verSplitLine1
                    height: parent.height
                    anchors.left: chargeContainer.right
                    anchors.leftMargin: 4
                }

                Grid{
                    id:clearMateriaContainer
                    columns: 5
                    anchors.left: verSplitLine1.right
                    anchors.leftMargin: 4
                    y: chargeContainer.y
                    ICIMMText {
                        text: qsTr("CEAR")
                    }
                    ICIMMText {
                        text: qsTr("PRES")
                    }
                    ICIMMText {
                        text: qsTr("SPE")
                    }
                    ICIMMText {
                        text: qsTr("POSN")
                    }
                    ICIMMText {
                        text: qsTr("TIME")
                    }

                    ICIMMText {
                    }
                    ICIMMText {
                        text: qsTr("(bar)")
                    }
                    ICIMMText {
                        text: qsTr("(%)")
                    }
                    ICIMMText {
                        text: qsTr("(mm)")
                    }
                    ICIMMText {
                        text: qsTr("(s)")
                    }

                    ICIMMText {
                        id:injSeg1Label
                        text: qsTr("Inj.Seg1")
                    }
                    ICIMMLineEdit{
                        id:m_rw_17_15_0_407
                        configAddr: "m_rw_17_15_0_407"
                        objectName: "3"
                    }
                    ICIMMLineEdit{
                        id:m_rw_0_16_0_408
                        configAddr: "m_rw_0_16_0_408"
                        objectName: "4"
                    }
                    ICIMMLineEdit{
                        id:m_rw_0_17_1_407
                        configAddr: "m_rw_0_17_1_407"
                        objectName: "5"
                    }
                    ICIMMText {
                    }

                    ICIMMText {
                        text: qsTr("Inj.Seg2")
                    }
                    ICIMMLineEdit{
                        id:m_rw_17_15_0_409
                        configAddr: "m_rw_17_15_0_409"
                    }
                    ICIMMLineEdit{
                        id:m_rw_0_16_0_410
                        configAddr: "m_rw_0_16_0_410"
                    }
                    ICIMMLineEdit{
                        id:m_rw_0_17_1_409
                        configAddr: "m_rw_0_17_1_409"
                    }
                    ICIMMText {
                    }

                    ICIMMText {
                        text: qsTr("S.B")
                    }
                    ICIMMLineEdit{
                        id:m_rw_17_15_0_411
                        configAddr: "m_rw_17_15_0_411"
                    }
                    ICIMMLineEdit{
                        id:m_rw_0_16_0_412
                        configAddr: "m_rw_0_16_0_412"
                    }
                    ICIMMLineEdit{
                        id:m_rw_0_17_1_411
                        configAddr: "m_rw_0_17_1_411"
                    }
                    ICIMMText {
                    }

                    ICIMMText {
                        text: qsTr("Feed")
                    }
                    ICIMMLineEdit{
                        id:m_rw_17_15_0_413
                        configAddr: "m_rw_17_15_0_413"
                    }
                    ICIMMLineEdit{
                        id:m_rw_0_16_0_414
                        configAddr: "m_rw_0_16_0_414"
                    }
                    ICIMMText {}
                    ICIMMLineEdit{
                        id:m_rw_16_16_2_414
                        configAddr: "m_rw_16_16_2_414"
                    }
                }
                ICIMMLabelLineEdit{
                    id:m_rw_0_8_0_415
                    configAddr: "m_rw_0_8_0_415"
                    configName: qsTr("Clr.T")
                    unit: qsTr("times")
                    anchors.top: clearMateriaContainer.bottom
                    x: clearMateriaContainer.x
                    configNameWidth: injSeg1Label.width - 1
                    inputWidth: m_rw_0_10_1_262.width << 1
                }

                ICVerSplitLine{
                    id:verSplitLine2
                    height: parent.height
                    anchors.left: clearMateriaContainer.right
                    anchors.leftMargin: 4
                }
                Grid{
                    id:otherChargeContainer
                    columns: 1
                    anchors.left: verSplitLine2.right
                    anchors.leftMargin: 4
                    y: chargeContainer.y
                    //                    ICIMMCheckBoxEdit{
                    //                        id:m_rw_0_1_0_253
                    //                        configAddr: "m_rw_0_1_0_253"
                    //                        text: qsTr("F.B.INJ")
                    //                    }
                    ICIMMCheckBoxEdit{
                        id:m_rw_16_1_0_284
                        configAddr: "m_rw_16_1_0_284"
                        configName: qsTr("F.A.Cool")
                    }
                    ICIMMLabelLineEdit{
                        id:m_rw_0_16_2_284
                        configAddr: "m_rw_0_16_2_284"
                        configName: qsTr("COOL.TIME")
                        unit: qsTr("s")
                    }
                    ICIMMLabelLineEdit{
                        id:m_rw_0_16_0_281
                        configAddr: "m_rw_0_16_0_281"
                        configName: qsTr("F.Protect")
                        unit: qsTr("s")
                        configNameWidth: m_rw_0_16_2_284.configNameWidth
                    }
                    ICIMMLabelComboBoxEdit{
                        id:m_rw_0_4_0_421
                        configAddr: "m_rw_0_4_0_421"
                        configName: qsTr("F.Mode")
                        items: [qsTr("Fix"), qsTr("Before"), qsTr("After")]
                        configNameWidth: m_rw_0_16_2_284.configNameWidth
                        z:2
                    }
                    ICIMMLabelLineEdit{
                        id:s_rw_0_8_0_282
                        configAddr: "s_rw_0_8_0_282"
                        configName: qsTr("F.T/Rotate")
                        configNameWidth: m_rw_0_16_2_284.configNameWidth

                    }

                }
            }
            ICIMMFrame{
                id:bottomRowLeft
                anchors.top: topRow.bottom
                width: verSplitLine1.x
                height: workReadyPage1.height * 0.45  + 1
                Grid{
                    id:delayContainer
                    columns: 1
                    x:4
                    y:2
                    ICIMMLabelLineEdit{
                        id:m_rw_0_16_2_277
                        configAddr: "m_rw_0_16_2_277"
                        configName: qsTr("F.B.Delay")
                        unit: qsTr("s")
                        configNameWidth: m_rw_0_16_2_296.configNameWidth
                    }
                    ICIMMLabelLineEdit{
                        id:m_rw_0_16_2_296
                        configAddr: "m_rw_0_16_2_296"
                        configName: qsTr("S.B.B.Delay")
                        unit: qsTr("s")
                    }
                    ICIMMLabelLineEdit{
                        id:m_rw_0_16_2_256
                        configAddr: "m_rw_0_16_2_256"
                        configName: qsTr("B.F.B.Delay")
                        unit: qsTr("s")
                        configNameWidth: m_rw_0_16_2_296.configNameWidth
                    }
                    ICIMMLabelLineEdit{
                        id:m_rw_8_16_2_415
                        configAddr: "m_rw_8_16_2_415"
                        configName: qsTr("A.F.B.Delay")
                        unit: qsTr("s")
                        configNameWidth: m_rw_0_16_2_296.configNameWidth
                    }
                    ICIMMLabelLineEdit{
                        id:m_rw_0_16_2_289
                        configAddr: "m_rw_0_16_2_289"
                        configName: qsTr("B.S.B.Delay")
                        unit: qsTr("s")
                        configNameWidth: m_rw_0_16_2_296.configNameWidth
                    }
                }
            }
            ICIMMFrame{
                id:tuneMoldContainer
                y:bottomRowLeft.y
                anchors.left: bottomRowLeft.right
                height: bottomRowLeft.height + 1
                width: verSplitLine2.x - bottomRowLeft.width
                Column{
                    spacing: 6
                    x:4
                    y:2
                    ICIMMText{
                        text: qsTr("Tune Mold")
                    }
                    Row{
                        spacing: 12
                        ICIMMButton{
                            id:startTuneMold
                            text: qsTr("Start")
                        }
                        ICIMMButton{
                            id:stopTuneMold
                            text:qsTr("Stop")
                        }
                    }
                    ICIMMLabelLineEdit{
                        configName:qsTr("Mold Width")
                        unit: qsTr("mm")
                    }
                }

            }
        }

    }
    Component.onCompleted: {
        addPage(workReadyPage1);
        setCurrentIndex(0);
    }
}
