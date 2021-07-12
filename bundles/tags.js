function $pick(){for(var a=0;a<arguments.length;a++)if(!Object.isUndefined(arguments[a]))return arguments[a];return null}Object.extend(Event,{KEY_COMMA:188,CHAR_COMMA:44}),Element.addMethods({getCaretPosition:function(){if(this.createTextRange){var a=document.selection.createRange().duplicate();return a.moveEnd("character",this.value.length),a.text===""?this.value.length:this.value.lastIndexOf(a.text)}return this.selectionStart},cacheData:function(a,b,c){if(Object.isUndefined(this[$(a).identify()])||!Object.isHash(this[$(a).identify()]))this[$(a).identify()]=$H();return this[$(a).identify()].set(b,c),a},retrieveData:function(a,b){return this[$(a).identify()].get(b)},onBoxDispose:function(a,b){a=a.retrieveData("text").evalJSON(!0),a.newValue||b.autoFeed(a)},onInputFocus:function(a,b){b.autoShowInputFocus&&b.autoShowInputFocus()},onInputBlur:function(a,b){b.lastinput=a,!b.curOn&&b.autoHide&&(b.blurhide=b.autoHide.bind(b).delay(.1))}}),Object.extend(String.prototype,{entitizeHTML:function(){return this.replace(/</g,"&lt;").replace(/>/g,"&gt;")},unentitizeHTML:function(){return this.replace(/&lt;/g,"<").replace(/&gt;/g,">")}});var ResizableTextbox=Class.create({initialize:function(a,b){var c=this;this.options=$H({minimum:5,maximum:500}).update(b),this.el=$(a),this.measurediv=this.getMeasurementDiv(),this.setElementWidth(),this.el.observe("keypress",this.setElementWidth.bind(this)).observe("change",this.setElementWidth.bind(this)).observe("keyup",this.setElementWidth.bind(this))},calculateWidth:function(){return this.measurediv.update($F(this.el).escapeHTML()+"MM"),newsize=this.measurediv.getWidth(),newsize<this.options.get("minimum")&&(newsize=this.options.get("minimum")),newsize>this.options.get("maximum")&&(newsize=this.options.get("maximum")),newsize},clear:function(){return this.el.clear(),this.setElementWidth(),this},focus:function(){return this.el.focus(),this},getMeasurementDiv:function(){if(!$("__resizeable_textbox_measure_div")){var a=new Element("div",{id:"__resizeable_textbox_measure_div"});a.setStyle({position:"absolute",top:"-1000px",left:"-1000px"}),$(document.body).insert(a)}else var a=$("__resizeable_textbox_measure_div");return a.setStyle({fontSize:this.el.getStyle("font-size"),fontFamily:this.el.getStyle("font-family")})},setElementWidth:function(){var a=this.calculateWidth();a>=this.options.get("minimum")&&a<=this.options.get("maximum")&&this.el.setStyle({width:a+"px"})}}),TextboxList=Class.create({initialize:function(a,b){this.options=$H({resizable:{},className:"bit",separator:",",extrainputs:!0,startinput:!0,onAdd:function(a){},onRemove:function(a){},hideempty:!0,newValues:!1,spaceReplace:"",encodeEntities:!1,jsonInputValue:!1}),this.current_input="",this.options.update(b),this.element=$(a).hide(),this.bits=new Hash,this.events=new Hash,this.count=0,this.current=!1,this.maininput=this.createInput({"class":"maininput"}),this.holder=(new Element("div",{"class":"holder"})).insert(this.maininput),this.element.insert({before:this.holder}),this.holder.observe("click",function(a){a.stop(),this.focus(this.maininput)}.bind(this)),this.makeResizable(this.maininput),this.setEvents()},setEvents:function(){this.holder.observe("keyup",function(a){a.stop();if(!this.current)return null;switch(a.keyCode){case Event.KEY_LEFT:return this.move("left");case Event.KEY_RIGHT:return this.move("right");case Event.KEY_DELETE:case Event.KEY_BACKSPACE:return this.moveDispose()}return null}.bind(this)).observe(Prototype.Browser.IE||Prototype.Browser.WebKit?"keydown":"keypress",function(a){if(!this.current)return null;this.current.retrieveData("type")=="box"&&a.keyCode==Event.KEY_BACKSPACE&&a.stop();if(this.current.retrieveData("input")&&!this.checkInput())return null;[Event.KEY_HOME,Event.KEY_END].include(a.keyCode)&&a.stop();switch(a.keyCode){case Event.KEY_HOME:return this.move("home");case Event.KEY_END:return this.move("end")}return null}.bind(this)),document.observe("click",function(){this.blur()}.bindAsEventListener(this))},update:function(){var a=this.bits.values();return this.options.get("jsonInputValue")?(this.current_input.blank()||this.current_input.split(/,/).each(function(b){b=b.strip(),a.push({caption:b,value:b,newValue:!0})}.bindAsEventListener(this)),this.element.value=a.toJSON()):(this.options.get("encodeEntities")&&(a=a.map(function(a){return a.toString().entitizeHTML().unescapeHTML().unentitizeHTML()})),this.element.value=a.join(this.options.get("separator")),this.current_input.blank()||(this.element.value+=(this.element.value.blank()?"":this.options.get("separator"))+this.current_input)),this},add:function(a,b){var c=this.id_base+"-"+this.count++,d=this.createBox($pick(b,a),{id:c,"class":this.options.get("className"),newValue:a.newValue?"true":"false",href:"#"});return(this.current||this.maininput).insert({before:d}),d.observe("click",function(a){a.stop(),this.focus(d)}.bind(this)),this.options.get("jsonInputValue")?this.bits.set(c,a):this.bits.set(c,a.value),this.update(),this.options.get("extrainputs")&&(this.options.get("startinput")||d.previous())&&this.addSmallInput(d,"before"),this.options.get("onAdd")(a),this.options.get("defaultDisplay")>0&&this.setDefaultDisplay(),d},addSmallInput:function(a,b){var c=this.createInput({"class":"smallinput"});return a.insert({}[b]=c),c.cacheData("small",!0),this.makeResizable(c),this.options.get("hideempty")&&c.hide(),c},insertCurrent:function(){if(this.options.get("newValues")){var a=this.current.retrieveData("input");a.value=a.value.strip();if(a.value.indexOf(",")<a.value.length-1){var b=a.value.indexOf(",");b>0&&(a.value=a.value.substr(0,b).strip())}else a.value=a.value.strip();this.options.get("spaceReplace").blank()||a.value.gsub(" ",this.options.get("spaceReplace"));if(!a.value.blank()){this.newvalue=!0;var c=a.value.gsub(",","");return c=this.options.get("encodeEntities")?c.entitizeHTML():c.escapeHTML(),a.retrieveData("resizable").clear().focus(),this.current_input="",this.add({caption:c,value:c,newValue:!0}),!0}}return!1},dispose:function(a){this.bits.unset(a.id);var b=a.innerHTML.stripScripts();return b=this.options.get("encodeEntities")?b.entitizeHTML():b.escapeHTML(),this.options.get("onRemove")(b.replace(/[\n\r\s]+/g," ")),this.update(),a.previous()&&a.previous().retrieveData("small")&&a.previous().remove(),this.current==a&&this.focus(a.next()),a.retrieveData("type")=="box"&&a.onBoxDispose(this),a.remove(),this},focus:function(a,b){if(!this.current)a.fire("focus");else if(this.current==a)return this;return this.blur(),a.addClassName(this.options.get("className")+"-"+a.retrieveData("type")+"-focus"),a.retrieveData("small")&&a.setStyle({display:"block"}),a.retrieveData("type")=="input"?(a.onInputFocus(this),b||this.callEvent(a.retrieveData("input"),"focus")):(a.fire("onBoxFocus"),this.callEvent(a,"focus")),this.current=a,this},blur:function(a){if(!this.current)return this;if(this.current.retrieveData("type")=="input"){var b=this.current.retrieveData("input");a||this.callEvent(b,"blur"),b.onInputBlur(this)}else this.current.fire("onBoxBlur");return this.current.retrieveData("small")&&!b.get("value")&&this.options.get("hideempty")&&this.current.hide(),this.current.removeClassName(this.options.get("className")+"-"+this.current.retrieveData("type")+"-focus"),this.current=!1,this},createBox:function(a,b){var c=(new Element("a",b)).addClassName(this.options.get("className")+"-box").update(a.caption.entitizeHTML()).cacheData("type","box"),d=new Element("a",{href:"#","class":"closebutton"});return d.observe("click",function(a){a.stop(),this.current||this.focus(this.maininput),this.dispose(c)}.bind(this)),c.insert(d).cacheData("text",Object.toJSON(a)),c},createInput:function(a){var b=new Element("a",{"class":this.options.get("className")+"-input"}),c=new Element("input",Object.extend(a,{type:"text",autocomplete:"off"}));c.observe("focus",function(a){this.isSelfEvent("focus")||this.focus(b,!0)}.bind(this)).observe("blur",function(){this.isSelfEvent("blur")||this.blur(!0)}.bind(this)).observe("keydown",function(a){this.cacheData("lastvalue",this.value).cacheData("lastcaret",this.getCaretPosition())}).observe("keypress",function(a){var b=a.charCode||a.keyCode;if(a.keyCode==Event.KEY_RETURN||b==Event.CHAR_COMMA)this.insertCurrentValue=!0}.bind(this)).observe("keyup",function(a){a.keyCode==Event.KEY_RETURN&&!this.insertCurrentValue&&(this.insertCurrentValue=!0),this.insertCurrentValue&&(this.insertCurrent()&&a.stop(),this.insertCurrentValue=!1)}.bind(this));var d=b.cacheData("type","input").cacheData("input",c).insert(c);return d},callEvent:function(a,b){this.events.set(b,a),a[b]()},isSelfEvent:function(a){return this.events.get(a)?!!this.events.unset(a):!1},makeResizable:function(a){var b=a.retrieveData("input");return b.cacheData("resizable",new ResizableTextbox(b,Object.extend(this.options.get("resizable"),{min:b.offsetWidth,max:this.element.getWidth()?this.element.getWidth():0}))),this},checkInput:function(){var a=this.current.retrieveData("input");return!a.retrieveData("lastvalue")||a.getCaretPosition()===0&&a.retrieveData("lastcaret")===0},move:function(a){switch(a){case"home":var b=this.current.parentNode.firstDescendant();break;case"end":var b=this.current.parentNode.childElements().last();break;default:var b=this.current[a=="left"?"previous":"next"]()}return b&&(!this.current.retrieveData("input")||this.checkInput()||a=="right")&&this.focus(b),this},moveDispose:function(){return this.current.retrieveData("type")=="box"?this.dispose(this.current):this.checkInput()&&this.bits.keys().length&&this.current.previous()?this.focus(this.current.previous()):null}}),ProtoMultiSelect=Class.create(TextboxList,{initialize:function($super,a,b,c,d){c=$H({fetchFile:undefined,fetchMethod:"get",fetchParameters:{},results:10,maxResults:0,wordMatch:!1,onEmptyInput:function(a){},onUserAdd:function(a){},onUserRemove:function(a){},caseSensitive:!1,regexSearch:!0,loadFromInput:!0,defaultMessage:"",defaultDisplay:-1,inputMessage:null,sortResults:!1,allowDuplicates:!1,autoDelay:250,autoResize:!1,pinAutoHolder:!1,renderItem:null,sortFunction:null,renderBox:null,addOnBlur:!1}).update(c),$super(a,c),this.loptions=$H({autocomplete:{opacity:1,maxresults:10,minchars:1}}),this.id_base=$(a).identify()+"_"+this.options.get("className"),this.data=[],this.data_searchable=[],this.selectedValues=new Hash,this.autoholder=$(b)||this.createAutoholder(b),this.autoholder.setOpacity(this.loptions.get("autocomplete").opacity).observe("mouseover",function(){this.curOn=!0}.bind(this)).observe("mouseout",function(){this.curOn=!1}.bind(this)),this.options.get("autoResize")&&(this.autoResize(),Event.observe(window,"resize",function(){this.autoResize()}.bind(this))),this.autoresults=this.autoholder.select("ul").first();var e=this.autoresults.select("li");e.each(function(a){this.add({value:a.readAttribute("value"),caption:a.innerHTML})},this),Object.isUndefined(this.options.get("fetchFile"))?Object.isUndefined(this.options.get("feed"))||(this.options.get("feed").each(function(a){this.autoFeed(a)}.bind(this)),this.options.get("defaultDisplay")>0&&this.setDefaultDisplay()):this.loadFromFetchFile(),Object.isUndefined(this.options.get("fetchFile"))&&this.options.get("loadFromInput")&&this.loadFromInput(),document.observe("click",function(){this.autoHide()}.bindAsEventListener(this)),this.inputElem=this.maininput.firstDescendant();if(this.options.get("inputMessage")){var f=function(a){this.inputElem.value.blank()&&(this.inputElem.setValue(this.options.get("inputMessage")),this.inputElem.addClassName("inputMessage"),this.inputElem.retrieveData("resizable").setElementWidth())}.bindAsEventListener(this);this.inputElem.observe("blur",f),f(),this.inputElem.observe("focus",function(a){this.inputElem.value==this.options.get("inputMessage")&&(this.inputElem.setValue(""),this.inputElem.removeClassName("inputMessage"))}.bindAsEventListener(this))}this.setDefaultEvents()},setDefaultEvents:function(){this.options.get("addOnBlur")&&this.inputElem.observe("blur",function(){this.autoAdd(this.autocurrent)}.bind(this)),this.options.get("defaultDisplay")>0&&(this.holder.observe("click",function(a){this.current_input.blank()&&this.setDefaultDisplay(),a.stop()}.bindAsEventListener(this)),this.autoholder.observe("click",function(a){this.current_input.blank()&&this.setDefaultDisplay(),a.stop()}.bindAsEventListener(this)))},add:function($super,a){this.autoClear();var b=$super(a);return this.selectedValues.set(b.getAttribute("id"),a),b},dispose:function($super,a){return this.options.get("onUserRemove")(this.selectedValues.get(a.getAttribute("id"))),this.selectedValues.unset(a.getAttribute("id")),$super(a)},foundInData:function(a){return this.data.find(function(b){if(!b)return!1;var c=b.evalJSON(!0);return c&&c.caption.toLowerCase().gsub(" ","")==a.toLowerCase().gsub(" ","")})},foundInSelectedValues:function(a){return this.selectedValues.values().find(function(b){return b&&b.caption&&b.caption.toLowerCase().gsub(" ","")==a.toLowerCase().gsub(" ","")})},isSearchInsertable:function(a){return this.options.get("newValues")&&(this.options.get("allowDuplicates")||!this.foundInSelectedValues(a)&&!this.foundInData(a))},insertCurrent:function($super,a){var b=!1,c=this.current.retrieveData("input"),d=c.value;if(!d||d=="")return!1;var e=d.split(/,/).compact().without("");return e.each(function(a){a&&a!=""&&this.isSearchInsertable(a)&&(a=a.strip(),c.value=a,$super()&&(this.options.get("onUserAdd")({caption:a,value:a,newValue:!0}),b=!0))}.bindAsEventListener(this)),b},autoClear:function(){this.autoholder.descendants().each(function(a){a.hide()}),this.resultsshown=!1},autoShowInputFocus:function(){return this.autoShow(this.inputElem.value.escapeHTML()),!0},autoShow:function(a){if(this.options.get("inputMessage")&&a==this.options.get("inputMessage"))return;this.autoholder.setStyle({display:"block"}),this.autoClear();if(!a||!a.strip()||!a.length||a.length<this.loptions.get("autocomplete").minchars)this.options.get("defaultDisplay")>0?this.setDefaultDisplay():this.autoholder.select(".default").first()&&this.autoholder.select(".default").first().setStyle({display:"block"}),this.resultsshown=!1;else{this.resultsshown=!0,this.autoresults.setStyle({display:"block"}).update("");if(!this.options.get("regexSearch")){var b=new Array;if(a){this.options.get("caseSensitive")||(a=a.toLowerCase());for(var c=0,d=0,e=this.data_searchable.length;d<e;d++)if(this.data_searchable[d].indexOf(a)>=0){var f=this.data[d];f!==undefined&&(b[c++]=f)}}}else{if(this.options.get("wordMatch"))var g=new RegExp("(^|\\s)"+RegExp.escape(a),this.options.get("caseSensitive")?"":"i");else var g=new RegExp(RegExp.escape(a),this.options.get("caseSensitive")?"":"i");var b=this.data.filter(function(a){return a?g.test(a.evalJSON(!0).caption):!1})}this.options.get("sortResults")&&(this.options.get("sortFunction")?b=b.sort(this.options.get("sortFunction")):b=b.sortBy(function(a){return a.evalJSON(!0).caption}));var h=0,i=0,j=null;this.isSearchInsertable(a)&&(h++,i++,j=new Element("li"),j.addClassName("add-value-special-element"),j.cacheData("result",{caption:a,value:a,newValue:!0}),j.cacheData("input",this.inputElem),j.observe("click",function(a){a.stop(),this.current_input="",this.autoAdd(j)}.bindAsEventListener(this)).observe("mouseover",function(){this.autoFocus(j)}.bindAsEventListener(this)).update("Add <b>"+a+"</b>"),this.autoresults.insert(j)),b.each(function(b,c){h++;if(c>=(this.options.get("maxResults")?this.options.get("maxResults"):this.loptions.get("autocomplete").maxresults)-i)return;el=this.addToAutocomplete(b,a),c==0&&this.autoFocus(el)},this),i==h&&this.autoFocus(j)}return this.options.get("pinAutoHolder")||(h==0?(this.autocurrent=!1,this.autoHide()):this.autoSizeHolder(h)),this},autoSizeHolder:function(a){if(this.autoresults.firstDescendant()){var b=this.autoresults.firstDescendant().offsetHeight+1;a>this.options.get("results")?this.autoresults.setStyle({height:this.options.get("results")*b+"px"}):this.autoresults.setStyle({height:(a?a*b:0)+"px"})}},autoHighlight:function(a,b){return a.entitizeHTML().unescapeHTML().gsub(new RegExp(RegExp.escape(b),"i"),function(a){return"<em>"+a[0]+"</em>"}).gsub(/<(?!\/?em>)/,"&lt;")},autoHide:function(){return this.options.get("pinAutoHolder")||(this.resultsshown=!1,this.autoholder.hide()),this},autoFocus:function(a){return a?(this.autocurrent&&this.autocurrent.removeClassName("auto-focus"),this.autocurrent=a.addClassName("auto-focus"),this):null},autoMove:function(a){return this.resultsshown?(this.autoFocus(this.autocurrent[a=="up"?"previous":"next"]()),this.autoresults.scrollTop=this.autocurrent.positionedOffset()[1]-this.autocurrent.getHeight(),this):null},setDefaultDisplay:function(){i_max=Math.min(this.options.get("defaultDisplay"),this.data.length),this.autoresults.setStyle({display:"block"}).update(),i=0,j=0;while(i<i_max&&j<this.data.length)typeof this.data[j]!="undefined"&&(this.addToAutocomplete(this.data[j]),i++),j++},addToAutocomplete:function(a,b){var c=this,d=new Element("li"),e=a.evalJSON(!0),f=e.caption;return d.observe("click",function(a){a.stop(),c.current_input="",c.autoAdd(this)}).observe("mouseover",function(){c.autoFocus(this)}),this.options.get("renderItem")?d.update(this.options.get("renderItem")(e)):d.update(this.autoHighlight(f,b)),this.autoresults.insert(d),d.cacheData("result",a.evalJSON(!0)),d},autoFeed:function(a){var b=this.options.get("caseSensitive");if(this.data.indexOf(Object.toJSON(a))==-1){this.data.push(Object.toJSON(a));var c=Object.toJSON(a).evalJSON(!0).caption.unentitizeHTML();this.data_searchable.push(b?c:c.toLowerCase())}return this},autoAdd:function(a){if(!a||!a.retrieveData("result"))return null;this.current_input="";var b=a.retrieveData("result");b.newValue?values=b.caption.split(/,/).each(function(a){a&&a!=""&&this.isSearchInsertable(a)&&this.autoAddSingle({caption:a,value:a,newValue:!0})}.bindAsEventListener(this)):this.autoAddSingle(b);var c=this.lastinput||this.current.retrieveData("input");return this.autoHide(),c.retrieveData("resizable").clear().focus(),this},autoAddSingle:function(a){this.add(a),this.options.get("onUserAdd")(a),delete this.data[this.data.indexOf(Object.toJSON(a))]},autoResize:function(){this.autoholder.setStyle({width:this.holder.getWidth()+"px"})},createInput:function($super,a){var b=$super(a),c=b.retrieveData("input");return c.observe("keydown",function(a){this.dosearch=!1,this.newvalue=!1;switch(a.keyCode){case Event.KEY_UP:return a.stop(),this.autoMove("up");case Event.KEY_DOWN:return a.stop(),this.autoMove("down");case Event.KEY_RETURN:case Event.KEY_TAB:var b=this.current.retrieveData("input").getValue();b.blank()&&(this.options.get("onEmptyInput")(),this.autocurrent=!1),a.stop(),this.autocurrent&&(new RegExp(RegExp.escape(b),"i")).test(this.autocurrent.retrieveData("result").caption.unentitizeHTML())?this.autoAdd(this.autocurrent):this.autoHide(),this.current_input="",this.autocurrent=!1,this.autoenter=!0;break;case Event.KEY_ESC:this.autocurrent=!1,this.autoHide();break;default:this.dosearch=!0}return null}.bind(this)),c.observe("keyup",function(a){switch(a.keyCode){case Event.KEY_COMMA:case Event.KEY_RETURN:case Event.KEY_TAB:case Event.KEY_UP:case Event.KEY_DOWN:case Event.KEY_ESC:break;default:this.current_input=this.options.get("encodeEntities")?c.value.strip().entitizeHTML():c.value.strip().escapeHTML(),this.update(),this.searchTimeout&&clearTimeout(this.searchTimeout),this.searchTimeout=setTimeout(function(){this.dosearch&&(this.autocurrent=!1,this.autoShow(c.value.escapeHTML()))}.bind(this),this.options.get("autoDelay"))}}.bind(this)),c.observe(Prototype.Browser.IE?"keydown":"keypress",function(a){a.keyCode==Event.KEY_RETURN&&this.autoenter&&a.stop(),this.autoenter=!1}.bind(this)),b},createBox:function($super,a,b){var c=Object.clone(a);this.options.get("renderBox")&&(c=this.options.get("renderBox")(c));var d=$super(c,b);return d.observe("mouseover",function(){this.addClassName("bit-hover")}).observe("mouseout",function(){this.removeClassName("bit-hover")}),d},createAutoholder:function(a){var b=new Element("div",{id:a,"class":"autocomplete"}),c=new Element("ul",{"class":"feed"});if(this.options.get("defaultMessage").length){var d=(new Element("div",{"class":"default"})).update(this.options.get("defaultMessage"));b.insert(d)}return b.insert(c),this.element.insert({after:b}),b},loadFromFetchFile:function(){new Ajax.Request(this.options.get("fetchFile"),{method:this.options.get("fetchMethod"),parameters:this.options.get("fetchParameters"),onSuccess:function(a){a.responseText.evalJSON(!0).each(function(a){this.autoFeed(a)}.bind(this)),this.options.get("loadFromInput")&&this.loadFromInput(),this.options.get("defaultDisplay")>0&&this.setDefaultDisplay()}.bind(this)})},loadFromInput:function(){if(this.options.get("jsonInputValue")){var a=this.element.value.evalJSON(!0);this.data.length&&a.each(function(a){this.add(a),a.newValue||delete this.data[this.data.indexOf(Object.toJSON(a))]}.bindAsEventListener(this))}else{var a=this.element.value.split(this.options.get("separator")).invoke("strip");this.data.length&&this.data.select(function(b){return a.include(b.evalJSON(!0).value)}).each(function(b){b=b.evalJSON(!0),this.add({value:b.value,caption:b.caption}),delete this.data[this.data.indexOf(Object.toJSON(b))],a=a.without(b.value)},this),a.each(function(a){a.empty()||this.add({value:a,caption:a})},this)}}});