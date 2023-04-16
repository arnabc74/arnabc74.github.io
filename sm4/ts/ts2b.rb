@{<NOTE>
<HEAD1>Prediction of time series</HEAD1>
<EXR>
Consider the innovations algorithm as given in the notes. Obtain
a prediction formula for <M>X_{n+1}</M> based on a <M>MA(2)</M>
time series <M>X_1,...,X_n:</M>
<D>
X_t = \epsilon_t + [[12]] \epsilon_{t-1},
</D>
where <M>(\epsilon_t)\sim WN(0,\sigma^2).</M>
</EXR>

<EXR>
Repeat the above exercise for an <M>AR(1)</M> time series:
<D>
X_t = \epsilon_t + [[12]] X_{t-1},
</D>
where <M>(\epsilon_t)\sim WN(0,\sigma^2).</M>
</EXR>
</NOTE>@}
