@{<NOTE>
<HEAD1>Queue</HEAD1>
Queues are much like stacks, except that insertion occurs at one
end, and removal from the other. These two operations are called,
respectively, <B>enqueue</B> and <B>dequeue</B>. No other
operations are allowed to modify the queue. As before you may
have query methods like <B>size</B>.

<EXM>
Suppose that I start with an empty queue, and issue the commands 
<PRE>
nq(1)
nq(5)
nq(3)
dq()
dq()
dq()
dq()
</PRE>
What will be the result?
<SOLN/>
Let's show the queue horizontally, insertion at right, removal from
left:
<PRE>
------

1
------


1 5
------


1 5 3
------


  5 3
------


    3
------



------


Error: queue underflow!
</PRE>
</EXM>
Notice that a queue follows the "first-in-first-out" (FIFO)
principle as opposed to the "last-in-first-out" (LIFO) principle
for stack.

<HEAD2>Using C</HEAD2>
If we know an maximum allowable size of the queue, we may use an
array to implement a queue. However, this is slightly more tricky
than implementing a stack. To see why, let's first try to proceed
as we did for a stack. We shall take an array, and use two
indices to mark the start and end of the queue:
<CIMG web="q1.png">The red cells belong to the queue</CIMG>
Notice how <C>end</C> index is one cell behind the red part.
This allows us to represent an empty queue by making <C>start</C>
equal to <C>end</C>. The size of the queue
is <C>end</C>-<C>start</C>. Then we can use the following C
functions to enqueue and dequeue:
<PRE>
int body[100];

void nq(int what) {
  if(start==99) {
    printf("Queue overflow!");
    return;
  }
  start++;
  body[start] = what;
}

int dq() {
  if(end==start) {
    printf("Queue underflow!");
    return;
  }
  end++;
  return body[end];
}

int size() {

  return start-end;
}

void dump() {
  int i;

  for(i=start;i>end;i--) 
    printf("%d\n", body[i]);
}
</PRE>
Do you see why this is a bad implementation? Consider the
following situation:
<CIMG web="q2.png">The white cells are unused</CIMG>
Now you want to enqueue one more entry. In our implementation,
you'll get an overflow error, yet part of the array is lying
unused! To utilize the trailing white cells, we need a more
clever implementation, where the <C>start</C> and <C>end</C>
indices are allowed to "wrap back" to the beginning. The coding
wil now become confusing unless you update your computational
model to a circular set up:
<CIMG web="cirq.png">Circular set up</CIMG>
<PRE>
int body[100];

void nq(int what) {
  int proposedStart = (start+1)%100;
  if(proposedStart==end) {
      printf("Queue overflow!");
      return;
  }
  start = proposedStart;

  body[start] = what;
}
</PRE>

<EXR>
Update the code for <C>dq()</C> and <C>size()</C>
and <C>dump()</C> appropriately for the circular set up.
</EXR>
All this discussion pertains to the situation where we have a
known maximum allowable size of the queue. If we do not have such
a maximum, then you may use a linked list, <LINK to="linklist.html">as we have already discussed</LINK>.
</NOTE>@}
