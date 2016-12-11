{if="!empty($posts)"}
    <ul class="list card shadow">
    {loop="$posts"}
        {$c->preparePost($value)}
    {/loop}
    </ul>
{else}
    <div class="placeholder icon blog">
        <h4>{$c->__('post.empty')}</h4>
    </div>
{/if}

{if="$posts != null && count($posts) >= $paging-1"}
<ul class="list active thick">
    <li onclick="Group_ajaxGetHistory('{$server}', '{$node}', {$page+1}); this.parentNode.parentNode.removeChild(this.parentNode);">
        <span class="primary icon">
            <i class="zmdi zmdi-time-restore"></i>
        </span>
        <p class="normal line">{$c->__('post.older')}</p>
    </li>
</ul>
{/if}
