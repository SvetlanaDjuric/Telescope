placing
on: aGroup
	"It is the main method of a layout and will define group elements positions"
	| result |
	self clearCache.
	self executeOn: aGroup.
	result := self rotateResult: self cache.
	self translateInPositiveReferencial: result