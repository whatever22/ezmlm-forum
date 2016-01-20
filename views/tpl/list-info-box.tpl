<script type="text/html" id="tpl-list-info-box" >
	{{^list}}
		erreur: la liste [{{list_name}}] n'existe pas sur ce serveur
	{{/list}}
	{{#list}}
	<h2>{{list.list_name}}</h2>
	<a href="#" class="tool list-tool-info-details">détails</a>
	<div class="list-info-box-details">
		<div class="details-row">
			premier message le <span class="message-date" title="{{list.first_message.message_date}}">{{list.first_message.message_date_moment}}</span>
			par <span class="author-name">{{list.first_message.author_name}}</span>
			<br/>
			&nbsp;&nbsp;(sujet: <a href="view-thread/{{list.first_message.subject_hash}}"><span class="thread-name">{{list.first_message.subject}}</span></a>)
		</div>
		<div class="details-row">
			dernier message le <span class="message-date" title="{{list.last_message.message_date}}">{{list.last_message.message_date_moment}}</span>
			par <span class="author-name">{{list.last_message.author_name}}</span>
			<br/>
			&nbsp;&nbsp;(sujet: <a href="view-thread/{{list.last_message.subject_hash}}"><span class="thread-name">{{list.last_message.subject}}</span></a>)
		</div>
	</div>
	{{/list}}
</script>