using System;
using System.Collections.Generic;
using System.Text;

namespace AreaLibrary.Figures
{
    public class Circle: IArea
    {
        private Double radius;

        public Circle(Double r)
        {
            this.radius = r;
        }

        public Double getArea()
        {
            return Math.PI * Math.Pow(this.radius, 2);
        }
    }
}
