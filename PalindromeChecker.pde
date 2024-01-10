public void setup()
{
        String[] lines = {"test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
        System.out.println("There are " + lines.length + " lines");

        for (String line : lines) {
            if (isPalindrome(line)) {
                System.out.println(line + " IS a palindrome.");
            } else {
                System.out.println(line + " is NOT a palindrome.");
            }
        }
    }

    public static boolean isPalindrome(String sWord) {
        String cleanWord = sWord.replaceAll("[^a-zA-Z]", "").toLowerCase();
        return cleanWord.equals(reverse(cleanWord));
    }

    public static String reverse(String sWord) {
        StringBuilder reversed = new StringBuilder();
        for (int i = sWord.length() - 1; i >= 0; i--) {
            reversed.append(sWord.charAt(i));
        }
        return reversed.toString();
    }
