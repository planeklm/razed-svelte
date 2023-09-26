<script lang="ts">
	import { SlideToggle } from '@skeletonlabs/skeleton';
	import { SendNUI } from '../utils/SendNUI';
	import { fade, fly, slide, crossfade } from 'svelte/transition';
	import { quintIn, quintOut, sineOut } from 'svelte/easing';
	import { onMount } from 'svelte';

</script>

<div class="w-[15%] h-[5%] bg-[#0D1018] absolute -translate-x-1/2 left-1/2 border border-[#182030] top-5 rounded-md transition ease-in-out delay-150" in:fly={{ duration: 1000, delay: 100, y:-200, opacity:100 , easing: quintOut }} out:fly={{ duration: 1000, delay: 100, y:-200, opacity:100 , easing: quintIn }}>
    <p class="font-semibold absolute translate-y-[60%] w-full ml-5 text-4xl overflow-hidden">Butter Barns'</p>
</div>