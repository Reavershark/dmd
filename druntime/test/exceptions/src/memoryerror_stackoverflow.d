import etc.linux.memoryerror;

alias LargeT = ubyte[1024];

void a(LargeT arg = LargeT.init)
    => b;

void b(LargeT arg = LargeT.init)
    => a;

void main()
{
    registerMemoryAssertHandler();
    a;
}
