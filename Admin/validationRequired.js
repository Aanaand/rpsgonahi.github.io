
//Here, in function "Required", I passed two parameters i.e. 
//ctrlID, ctrlName means textbox id, and textbox name.

//In if part, it will take textbox id and check for empty. If it is true,
//it will show the warning message based on name provided in place of ctrlname.

function Required(ctrlID, ctrlName) {
    var txtControl = document.getElementById(ctrlID);
    var string = document.getElementById(ctrlID).value;
    var spaceCount;

    if (txtControl.value == '') {
        alert('Please! ' + ctrlName + '.');
        txtControl.focus();

        return false;
    }
    else {
        spaceCount = 0;
        for (var count = 0; count < string.length; count++) {
            var ch = string.substring(count, count + 1);

            if (ch == ' ') {
                spaceCount++;
            }
        }
        if (spaceCount == string.length) {
            alert('Please Enter ' + ctrlName + '.');
            txtControl.value = "";
            txtControl.focus();
            return false;
        }
    }

    return true;
}





