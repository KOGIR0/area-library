using System;
using System.Collections.Generic;
using System.Text;

namespace AreaLibrary.Figures
{
    public class Triangle: IArea
    {
        private Double a, b, c;

        public Triangle(Double a, Double b, Double c)
        {
            this.a = a;
            this.b = b;
            this.c = c;
        }

        public bool isRightAngled()
        {
            return ((Math.Pow(this.a, 2) + Math.Pow(this.b, 2)) == Math.Pow(this.c, 2)) ||
                ((Math.Pow(this.c, 2) + Math.Pow(this.b, 2)) == Math.Pow(this.a, 2)) ||
                ((Math.Pow(this.a, 2) + Math.Pow(this.c, 2)) == Math.Pow(this.b, 2));
        }

        //formula to find area
        //S = sqrt(sp*(sp-a)*(sp-b)*(sp-c))
        public Double getArea()
        {
            Double semiPerimeter = (this.a + this.b + this.c) / 2;
            return Math.Sqrt(semiPerimeter * (semiPerimeter - this.a) * (semiPerimeter - this.b) * (semiPerimeter - this.c));
        }
    }
}
