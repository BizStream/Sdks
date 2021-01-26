using System;

namespace BizStream.NET.Sdk.Test
{

    public class ClassThatDoesntProperlyImplementDisposable : IDisposable
    {

        public void Dispose()
        {
        }

    }

}
