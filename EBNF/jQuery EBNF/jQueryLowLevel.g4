<include> :=    <DOMElement.g4> ","
                <URL.g4> ","
                <ajaxObject.g4> ","
                <jQueryTypes.g4>               

<flags> := <STRING_LITERAL>
<container> := <DOMElement>
<contained> := <DOMElement>

<cssZIndex> := <finishTheRule>
<cssFontWeight> := <finishTheRule>
<cssOpacity> := <finishTheRule>
<cssZoom> := <finishTheRule>
<cssLineHeight> := <finishTheRule>
<cssWindows> := <finishTheRule>
<cssOrphans> := <finishTheRule>
<cssFillOpacity> := <finishTheRule>
<cssColumnCount> := <finishTheRule>
<cssOrder> := <finishTheRule>
<cssFlexGrow> := <finishTheRule>
<cssFlexShring> := <finishTheRule>

<cssNumberObject> := "{ 
                        zIndex: " <cssZIndex> ", 
                        fontWeight: " <cssFontWeight> ", 
                        opacity: " <cssOpacity> ", 
                        zoom: " <cssZoom> ",
                        lineHeight: " <cssLineHeight> ",
                        windows: " <cssWindows> ",
                        orphans: " <cssOrphans> ",
                        fillOpacity: " <cssFillOpacity> ",
                        columnCount: " <cssColumnCount> ", 
                        order: " <cssOrder> ",
                        flexGrow: " <cssFlexGrow> ",
                        flexShrink: " <cssFlexShring> 
                     " }"
                     
<target> := <plainObject>
<object1> := <plainObject>
<object2> := <plainObject>
<arrayLikeObject> := <finishTheRule>

<jQueryLowLevel> := "jQuery." (
                "ajax(" (<url> ["," <settings>]) | [<settings>] ")" |
                "ajaxPrefilter(" [<STRING_LITERAL>] ", function (" <plainObject> "," <plainObject> "," <jqXHR> ") {" <functionBody> "}"  ")" |
                "ajaxSetup(" <plainObject> ")" | (* Its use is not recommended. *)
                "ajaxTransport(" <STRING_LITERAL> ", function (" <plainObject> "," <plainObject> "," <jqXHR> ") {" <functionBody> "}"  ")" |
                "boxModel" | (* Deprecated. This property was removed in jQuery 1.8. Please try to use feature detection instead. *)
                "browser" | (* Deprecated. This property was removed in jQuery 1.9 and is available only through the jQuery.migrate plugin. *)
                "CallBacks(" <flags> ")" |
                "contains(" <container> "," <contained> ")" |
                "cssHooks" |
                "cssNumber" | (* see: <cssNumberObject> *)
                "data(" (<DOMElement> "," <STRING_LITERAL> "," <anything>) |
                    (<DOMElement> | <STRING_LITERAL>) | <DOMElement> ")" |
                "Deferred("[<deferredFunction>]")" |
                "dequeue(" <DOMElement> ["," <STRING_LITERAL> ] ")" |
                "each(" (<JavaScriptArray> ", function (" <INTEGER_LITERAL> "," <plainObject> ") {" <functionBody> "}") |
                        (<plainObject> ", function (" <STRING_LITERAL> "," <plainObject> ") {" <functionBody> "}") ")" |
                "error(" <STRING_LITERAL> ")" |
                "escapeSelector(" <selector> ")" |
                "extend(" [<BOOLEAN_LITERAL> ","] <target> ["," <object1>] ["," <object2>]")" |
                "fn.extend(" <plainObject> ")" |
                "fx.interval" |
                "fx.off" |
                "get(" (<url> ["," (<plainObject> | <STRING_LITERAL>)][", function (" <plainObject> "," <STRING_LITERAL> "," <jqXHR> ") {" <functionBody> "}" ]) | [<ajaxObject>] ")" |
                "getJSON(" <url> ["," (<plainObject> | <STRING_LITERAL>)][", function (" <plainObject> "," <STRING_LITERAL> "," <jqXHR> ") {" <functionBody> "}"] ")" |
                "getScript(" <url> [", function (" <STRING_LITERAL> "," <STRING_LITERAL> "," <jqXHR> ") {" <functionBody> "}"] ")" |
                "globalEval(" <STRING_LITERAL> ")" | 
                "grep(" <JavaScriptArray> ", function (" <plainObject> "," <INTEGER_LITERAL> ") {" <functionBody> "return" <BOOLEAN_LITERAL> "}" ["," <BOOLEAN_LITERAL>]  ")" |
                "hasData(" <DOMElement> ")" |
                "holdReady(" <BOOLEAN_LITERAL> ")" |
                "htmlPrefilter(" <STRING_LITERAL> ")" |
                "inArray(" <anything> "," <JavaScriptArray> ["," <NUMBER_LITERAL>] ")" |
                "isArray(" <plainObject> ")" |
                "isEmptyObject(" <plainObject> ")" |
                "isFunction(" <plainObject> ")" |
                "isNumeric(" <anything> ")" |
                "isPlainObject(" <plainObject> ")" |
                "isWindow(" <plainObject> ")" |
                "isXMLDoc(" <DOMElement> ")" |
                "makeArray(" <plainObject> ")" |
                "map(" (<JavaScriptArray> | <JavaScriptObject>) ", function (" <plainObject> "," <INTEGER_LITERAL> ") {" <functionBody> "return" <plainObject> ";" "}" ")" |
                "merge(" <arrayLikeObject> "," <arrayLikeObject> ")" |  
                "noConflict(" [<BOOLEAN_LITERAL>] ")" | (* ContinueHere *)
                "noop()" |
                "now()" |
                "param()" |
                "parseHTML()" |
                "parseJSON()" |
                "parseXML()" |
                "post()" |
                "proxy()" |
                "queue()" |
                "readyException()" |
                "removeData()" |
                "speed" |
                "sub()" |
                "support" |
                "trim()" |
                "type()" |
                "unique()" |
                "uniqueSort()" |
                "when(" {<deferred>} | {<JavaScriptObject>} ")"
            )
            