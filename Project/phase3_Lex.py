class Lexer:
    def __init__(self, input):
        pass

  
    def nextChar(self):
        pass

   
    def peek(self):
        pass

    
    def abort(self, message):
        pass
		
 
    def skipWhitespace(self):
        pass
		

    def skipComment(self):
        pass

   
    def getToken(self):
        pass
      
    def __init__(self, input):
      self.source = input + '\n'
      self.curChar = ''   
      self.curPos = -1    
      self.nextChar()
      
    def nextChar(self):
        self.curPos += 1
        if self.curPos >= len(self.source):
            self.curChar = '\0'  # EOF
        else:
            self.curChar = self.source[self.curPos]
            
               
    def peek(self):
        if self.curPos + 1 >= len(self.source):
            return '\0'
        return self.source[self.curPos+1]
      
