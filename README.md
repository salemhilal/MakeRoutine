# MakeRoutine

Micromanaging my morning routine

## Try it out

```sh
git clone git@github.com:salemhilal/MakeRoutine.git
cd MakeRoutine
make # and then hit enter to progress
```

## What’s all this then

I am a person who:
  - is indecisive without coffee
  - is slow to leave the house in the mornings
  - has never written a proper makefile

I liked the idea that a morning routine was not unlike a dependency graph — parts of your morning, like drinking coffee, should not come after other parts of your morning, like brushing your teeth.

I wondered if I could use the dependency-resolving logic inside `make` to determine the order in which I carry out my morning routine. Perhaps, with something else making decisions for me, I’ll be able to get out the door faster.

Anyways I wrote a makefile that tells me what to do, one step at a time. It’s not very complicated, but it does the trick. Read through it to get a general idea. 
