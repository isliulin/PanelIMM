TRANSLATIONS += translations/IMM_zh_CN.ts translations/IMM_en_US.ts
lupdate_only{
SOURCES = *.qml \
          *.js \
../ICCustomElement/* \
immcustomitems/* \
settingpages/* \
monitorpages/* \
configs/* \
../styles/*
}

OTHER_FILES += \
    settingpages/ICMaintainFuncPage.qml \
    settingpages/ICPanelFuncPage.qml \
    immcustomitems/ICIMMLedTextLabel.qml





