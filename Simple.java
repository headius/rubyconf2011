public class Simple {
  private String name;
  public int number;
  
  public Simple(String name, int number) {
    this.name = name;
    this.number = number;
  }
  
  public String getName() { return name; }
  public int getNumber() { return number; }
  public void setName(String name) {
    this.name = name;
  }
  public void setNumber(int number) {
    this.number = number;
  }
  
  public void doSomething(Runnable something) {
    System.out.println("something in " + name + "#" + number);
    something.run();
  }
}