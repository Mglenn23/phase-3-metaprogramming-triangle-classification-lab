class Triangle
  # write code here
  attr_accessor :s1, :s2,:s3

  def initialize(s1,s2,s3)
    @s1=s1
    @s2=s2
    @s3=s3
  end

  def kind
    if s1 == s2 && s2 ==s3 && s1 !=0 
      :equilateral
    elsif (s1 == s2 && s1 !=s3 && s1+s2-s3>0 && s1+s3-s2>0 && s3+s2-s1>0) || (s1 == s3 && s1 !=s2 && s1+s2-s3>0 && s1+s3-s2>0 && s3+s2-s1>0) || (s2 == s3 && s1 !=s3 && s1+s2-s3>0 && s1+s3-s2>0 && s3+s2-s1>0 )
      :isosceles
    elsif (s1 != s2 && s2 !=3 && s1 !=s3)&& s1*s2*s3 > 0 
      :scalene
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    # triangle error code

  end
end
