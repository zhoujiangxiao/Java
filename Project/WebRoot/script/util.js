

$.fn.serializeObject = function(){
   var o = {};
   var a = this.serializeArray();
   $.each(a, function() {
       if (o[this.name]) {
           if (!o[this.name].push) {
               o[this.name] = [o[this.name]];
           }
           o[this.name].push(this.value || '');
       } else {
           o[this.name] = this.value || '';
       }
   });
   return o;
};

/**
 * 全/反选
 * @param checkName	checkbox的name属性
 * @return
 */
function choose(checkName){
	var checkBoxArray = document.getElementsByName(checkName);
	for(var i=0;i<checkBoxArray.length;i++){
		checkBoxArray[i].click();
	}
}