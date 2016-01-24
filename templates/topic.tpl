<!-- IF config.usePagination -->
<script type="text/javascript">

jQuery(function ($) {
	
	'use strict';
	
	(function () {
	var $frame  = $('#basic');
	var $slidee = $frame.children('ul').eq(0);	
	var $wrap   = $frame.parent();
	
	
	
	var options = {
	  	horizontal: 1,
		itemNav: 'basic',
		smart: 1,
		activateOn: 'click',
		mouseDragging: 1,
		touchDragging: 1,
		releaseSwing: 1,
		scrollBar: $wrap.find('.scrollbar'),
		scrollBy: 2,
		scrollTrap: true, 
		pagesBar: $wrap.find('.pages'),
		activatePageOn: 'click',
		speed: 200,
		moveBy: 300,
		elasticBounds: 1,
		dragHandle: 1,
		dynamicHandle: 1,
		clickBar: 1, 
		keyboardNavBy: 'items',
		prevPage: $wrap.find('.prevPage'),
		nextPage: $wrap.find('.nextPage')
	
  	};
	

	var fn,fn1,fn2;
  	var sly = new Sly('#basic', options, {
    	load: function () {
    		this.activate(this.getIndex($wrap.find('.active')));
		},
		move: [
			function () {},
	        function () {}
		] 
    }).init();	
	
	}());	
});

jQuery(function ($) {
	
	'use strict';
	
	(function () {
	var $frame  = $('#basic2');
	var $slidee = $frame.children('ul').eq(0);	
	var $wrap   = $frame.parent();
	
	
	
	var options = {
	  	horizontal: 1,
		itemNav: 'basic',
		smart: 1,
		activateOn: 'click',
		mouseDragging: 1,
		touchDragging: 1,
		releaseSwing: 1,
		scrollBar: $wrap.find('.scrollbar'),
		scrollBy: 2,
		scrollTrap: true, 
		pagesBar: $wrap.find('.pages'),
		activatePageOn: 'click',
		speed: 200,
		moveBy: 300,
		elasticBounds: 1,
		dragHandle: 1,
		dynamicHandle: 1,
		clickBar: 1, 
		keyboardNavBy: 'items',
		prevPage: $wrap.find('.prevPage'),
		nextPage: $wrap.find('.nextPage')
	
  	};
	

	var fn,fn1,fn2;
  	var sly = new Sly('#basic2', options, {
    	load: function () {
    		this.activate(this.getIndex($wrap.find('.active')));
		},
		move: [
			function () {},
	        function () {}
		] 
    }).init();	
	
	}());	
});

</script>
<!-- ENDIF config.usePagination -->

<div class="row">
<div class="topic col-lg-12">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<h1 component="post/header" class="hidden-xs" itemprop="name">

		<i class="pull-left fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->"></i> <i class="pull-left fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->"></i> <span class="topic-title" component="topic/title">{title}</span>

		<span class="browsing-users hidden hidden-xs hidden-sm pull-right">
			<span>[[category:browsing]]</span>
			<div component="topic/browsing/list" class="thread_active_users active-users inline-block"></div>
			<small class="hidden">
				<i class="fa fa-users"></i> <span component="topic/browsing/count" class="user-count"></span>
			</small>
		</span>
	</h1>

	<div component="topic/deleted/message" class="alert alert-warning<!-- IF !deleted --> hidden<!-- ENDIF !deleted -->">[[topic:deleted_message]]</div>

	<hr class="visible-xs" />

	<!-- IF config.usePagination -->
	<div class="example">
	<div class="scrollbar">
		<div class="handle">
			<div class="mousearea"></div>
		</div>
	</div>
	<button class="backward"><a href="?page=1"><i class="fa fa-angle-double-left"></i></a></button>
	<button class="forward"><a href="?page={pagination.pageCount}"><i class="fa fa-angle-double-right"></i></a></button>
	
	<div id="basic2" class="frame text-center pagination-container<!-- IF !pagination.pages.length --> hidden<!-- ENDIF !pagination.pages.length -->">
	<ul class="slidee">
	
	<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->
	
	<ul component="topic" class="posts" data-tid="{tid}">
		<!-- BEGIN posts -->
			<li component="post" class="<!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted --><!-- IF posts.ignored --> ignored<!-- ENDIF posts.ignored --><!-- IF posts.isOP --> highlight-op<!-- ENDIF posts.isOP -->" <!-- IMPORT partials/data/topic.tpl -->>
				<a component="post/anchor" data-index="{posts.index}" name="{posts.index}"></a>

				<meta itemprop="datePublished" content="{posts.relativeTime}">
				<meta itemprop="dateModified" content="{posts.relativeEditTime}">

				<!-- IMPORT partials/topic/post.tpl -->
			</li>

		<!-- END posts -->

		<div class="post-bar">
			<!-- IMPORT partials/post_bar.tpl -->
		</div>
	</ul>

	<!-- IF config.usePagination -->
	<div class="example">
	<div class="scrollbar">
		<div class="handle">
			<div class="mousearea"></div>
		</div>
	</div>
	<button class="backward"><a href="?page=1"><i class="fa fa-angle-double-left"></i></a></button>
	<button class="forward"><a href="?page={pagination.pageCount}"><i class="fa fa-angle-double-right"></i></a></button>
	
	<div id="basic" class="frame text-center pagination-container<!-- IF !pagination.pages.length --> hidden<!-- ENDIF !pagination.pages.length -->">
	<ul class="slidee">
	
	<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->

	<div class="visible-xs visible-sm pagination-block text-center">
		<div class="progress-bar"></div>
		<div class="wrapper">
			<!--<i class="fa fa-2x fa-angle-double-up pointer fa-fw pagetop"></i>
			<i class="fa fa-2x fa-angle-up pointer fa-fw pageup"></i>
			<span class="pagination-text"></span>
			<i class="fa fa-2x fa-angle-down pointer fa-fw pagedown"></i>
			<i class="fa fa-2x fa-angle-double-down pointer fa-fw pagebottom"></i>-->
		</div>
	</div>
</div>
</div>
<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->