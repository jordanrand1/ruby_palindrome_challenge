var $btn = $('#submit')
var $output = $('#output')

function test(){
  input = $('#input').val().replace(/\s+/g, '').toLowerCase()
  newString = ''
  for(i = input.length - 1; i >= 0; i--){
    newString += input[i]
  }
  console.log(input)
  console.log(newString)
  if(input === newString){
    $output.text('You entered a palindrome!')
  } else {
    $output.text('Not a plaindrome! Try again!')
  }
}

$($btn).on('click', test)