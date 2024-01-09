public void setup()
{
  String[] lines = {"test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String sWord)
{
  if(sWord.equals(reverse(sWord)))
    return true;
  else
    return false;
}
public String reverse(String sWord)
{
  String result = new String(); 
  String result1 = new String();
  String result2 = new String();
  String result3 = new String();
  result=sWord.toLowerCase();
  for(int i = 0; i < result.length(); i++)
     if(!result.substring(i,i+1).equals(" "))
       result1=result1 + result.substring(i,i+1);
  for(int i = 0; i < result1.length(); i++)
    if(Character.isLetter(result1.charAt(i)))
      result2 = result2 + result1.substring(i,i+1);
  for(int i = result2.length()-1; i>=0; i--){
    result3=result3+result2.charAt(i);
  }
  return result3;
}
