<div class="recent">

	<div class="clearfix">
		<div class="pull-left">
		<!-- IMPORT partials/breadcrumbs.tpl -->
		</div>
		<div class="pull-right">
			<!-- IF loggedIn -->
			<button id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
			<!-- ELSE -->
			<a href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
			<!-- ENDIF loggedIn -->
		</div>
	</div>

	<hr class="hidden-xs"/>

	<div class="category">

		<div class="category-bar"><p class="hidden-xs">[[pages:recent]]</p></div>
		<!-- IF !topics.length -->
		<div class="alert alert-warning" id="category-no-topics">[[recent:no_recent_topics]]</div>
		<!-- ENDIF !topics.length -->

		<a href="{config.relative_path}/recent">
			<div class="alert alert-warning hide" id="new-topics-alert"></div>
		</a>

		<!-- IMPORT partials/topics_list.tpl -->
		<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator_plus.tpl -->
		<div class="example <!-- IF !pagination.pages.length --> hidden<!-- ENDIF !pagination.pages.length -->">
		<div class="scrollbar visible-xs">
			<div class="handle">
				<div class="mousearea"></div>
			</div>
		</div>
		<div class="backward"><a href="?page=1"><i class="fa fa-angle-double-left"></i></a></div>
		<div class="forward"><a href="?page={pagination.pageCount}"><i class="fa fa-angle-double-right"></i></a></div>

		<div id="basic" component="pagination" class="frame text-center pagination-container">
		<ul class="slidee">
 			<!-- IMPORT partials/paginator.tpl -->
 		<!-- ENDIF config.usePagination -->
	</div>
</div>
