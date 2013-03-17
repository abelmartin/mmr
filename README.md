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

# My Assessments.

These may be incorrect, but for now they ring true:

* Make sure the markup that depends on a controller lives as a child of
an element with that ``ng-controller`` attribute set.  Angular appears
to be all about scoping within your templates.

* Check out and use the ['Batarang' Chrome
extension](https://github.com/angular/angularjs-batarang). It gives you
a great way to drill into your angular app to find bugs and ensure
objects are bound correctly.

* Much like creating a new object and pushing it onto an array your
scope knows about, you need to explicitily splice deleted objects out of
your arrays for the DOM to update correctly.

* I have a strong feeling [AngularUI](http://angular-ui.github.com/) is
going to play a part in the final implementation. Keyboard bind events
and GoogleMap integrations could be really cool to use.
