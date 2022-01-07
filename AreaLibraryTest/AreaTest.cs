using Microsoft.VisualStudio.TestTools.UnitTesting;
using AreaLibrary.Figures;
using System;

namespace AreaLibraryTest
{
    [TestClass]
    public class AreaTest
    {
        [TestMethod]
        public void TestCircleArea()
        {
            IArea c1 = new Circle(1);
            Assert.AreEqual(c1.getArea(), Math.PI);
        }

        [TestMethod]
        public void TestTriangleArea()
        {
            IArea triangle = new Triangle(3, 4, 5);
            Assert.AreEqual(6, triangle.getArea());
        }

        [TestMethod]
        public void TestTriangleIsRightAngled()
        {
            Triangle triangle = new Triangle(3, 4, 5);
            Assert.IsTrue(triangle.isRightAngled());
        }

        [TestMethod]
        public void TestTriangleIsNotRightAngled()
        {
            Triangle triangle = new Triangle(4, 4, 5);
            Assert.IsFalse(triangle.isRightAngled());
        }
    }
}
