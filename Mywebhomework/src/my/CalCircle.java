package my;

public class CalCircle {
	private double radius;
	private double perimeter = 0;
	private double area = 0;
	
	public void setRadius(double radius) 
	{
		this.radius = radius;
	}
	
	public double getRadius()
	{
		return radius; 
	}
	
	public double getPerimeter()
	{
		double perimeter = radius*Math.PI*2;
		return perimeter;
	}
	
	public double getArea() 
	{
		double area = radius*radius*Math.PI;
		return area;
	}
	
}
