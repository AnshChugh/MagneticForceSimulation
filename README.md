<h1>
 Magnetic Force Simultation using processing </h1>

</br></br>
<h3> Problems faced</h3>

</br>
<p> The first part of simulation was very easy to create. </br>
But the outcomes of the forces in the simulation was a  circular motion that was spiraling out rather than doing uniform circular motion. </br>

After spending so much time in this problem figuring out it may be pusedo force concept(I was completly wrong) I found what was the problem </br>

the acceleration and velocity was added as if their was no time but for uniform circular motion acceleration differ greatly even after minisecond time so it was spiring out. </br>

Now the fix still spirals out but by very litte because of small time dt = 0.01 whereas in real life the time difference is infinetesimally small
</br>

Note: I could have used limit() function of PVector to limit but it is simulation and not drawing so I wanted the physics to fix it by itself and my job is to only fix physics
</p>
