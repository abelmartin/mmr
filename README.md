# References

* [RailsCasts #405](http://railscasts.com/episodes/405-angularjs?autoplay=true): It's a pro episode and totally worth it.
* [AngularJS Official Tutorial](http://docs.angularjs.org/tutorial):
Something nice to also checkout.

# Lessons Leanred

* In HAML you can generate this:

```
<html ng-app>
```

...like this:

```
%html{'ng-app' => true}
```

* Make sure the markup that depends on a controller lives as a child of
an element with that ``ng-controller`` attribute set.
