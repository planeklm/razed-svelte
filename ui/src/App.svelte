<script lang="ts">
	import VisibilityProvider from '@providers/VisibilityProvider.svelte'
	import { TEMP_HIDE, BROWSER_MODE, RESOURCE_NAME } from '@store/stores'
	import Menu from '@providers/Menu.svelte'
	import ItemStore from '@providers/ItemStore.svelte'
	import Notification from '@providers/Notification.svelte'
	import AlwaysListener from '@providers/AlwaysListener.svelte'

	$RESOURCE_NAME = 'razed-svelte' // Change this to your resource name (case sensitive)
</script>

<VisibilityProvider>
	<Menu />

	{#if $TEMP_HIDE}
		<ItemStore />
	{/if}

</VisibilityProvider>


<AlwaysListener />
{#if $BROWSER_MODE}
	<div class="absolute w-screen h-screen top-0 left-0 dev-image" />
{/if}

<style>
	.dev-image {
		background-image: url('https://cdn.discordapp.com/attachments/1068663854143389788/1074878298498281554/HUD_-_Target_Menu.png');
		background-size: cover;
		background-repeat: no-repeat;
		background-position: center;
	}
</style>