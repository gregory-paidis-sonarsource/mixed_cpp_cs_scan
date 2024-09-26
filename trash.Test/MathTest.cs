namespace trash.Test;

[TestClass]
public class MathTest
{
    [TestMethod]
    public void TestAdd()
    {
        Assert.AreEqual(3, Math.Add(1, 2));
    }
}