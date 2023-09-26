<script lang="ts">
	import {
		 TEMP_HIDE
	} from '../store/stores';

	import { SendNUI } from '../utils/SendNUI';
	import { fade, fly, slide, crossfade } from 'svelte/transition';
	import { quintIn, quintOut, sineOut } from 'svelte/easing';
	import { onMount } from 'svelte';
	let name = 'Image';
	let amount1 = 1;

	function showMenu() {
  	    return $TEMP_HIDE = false
	}	

	function payForItem1() {
		SendNUI('payForItem1', amount1)
	}
</script>

<div class="w-[80%] h-[30%] bg-[#0D1018] absolute -translate-x-1/2 left-1/2 border border-[#182030] bottom-0 rounded-md transition ease-in-out duration-10"
	style="opacity: {$TEMP_HIDE ? "1" : "0"};"
	in:slide={{ duration: 500, delay: 250, axis: 'x', easing: quintOut }}
	out:fade={{ duration: 250, delay: 100, easing: quintIn }} >

	<div class="w-[98%] h-[17%] mx-auto my-5 bg-[#0A0D13] text-[#A6B0C3] drop-shadow-lg rounded-md border border-[#182030] flex flex-col justify-center" in:fly={{ x: 10, delay: 500, duration: 250 }}>
        <p class="font-bold text-4xl ml-7 mt-2">
			<i class="fa-solid fa-shop"></i>
			Butter Barns'
		</p>
		<button class="text-4xl fixed text-[#182030] fa fa-xmark right-[1%]"
		on:click={
			showMenu
		  }
		></button>
	</div>

	<div class="w-[98%] h-[74%] mx-auto my-3 overflow-y-auto text-[#A6B0C3] drop-shadow-lg rounded-md" in:fly={{ x: 10, delay: 500, duration: 250 }}>
		<div class="w-[49%] h-[95%] fixed bg-[#0A0D13] text-[#A6B0C3] drop-shadow-lg rounded-md border border-[#182030]" in:fly={{ x: 10, delay: 500, duration: 250 }}>
            <div class="w-[96%] h-[50%] h-screen my-[2%] mx-auto bg-[#0A0D13] text-[#A6B0C3] font-semibold drop-shadow-lg rounded-md flex flex-col justify-center" >
                <p class="font-semibold absolute w-full text-center text-5xl">
                    iFruit 69
                </p>
                <p class="font-light absolute w-full text-center translate-y-[100%] text-3xl">
                    $999
                </p>
                <img class="object-cover h-[100%] w-[100%] rounded-md border-[#182030]" src="images/placeholder.png" alt="{name}"/>
            </div>
			
            <input bind:value={ amount1 } class="w-[10%] h-[15%] flex translate-x-[450%] text-center text-white drop-shadow-lg font-sans rounded-md bg-[#0D1018] border border-[#182030] transition ease-in-out delay-150" placeholder="1"/>

            <button type="button" class="relative w-[25%] h-[15%] translate-x-[150%] translate-y-[20%] drop-shadow-lg text-xl font-sans rounded-md font-semibold bg-[#2B4A28] text-[#E7FEDC] transition ease-in-out delay-150"
			on:click={
				payForItem1
			  }
			  in:fade={{ delay: 350, duration: 550 }}>
			<i class="text-[#E7FEDC] fa fa-check"></i>
			Buy
			</button>
		</div>
		<div class="w-[49%] h-[95%] fixed left-[50.5%] bg-[#0A0D13] text-[#A6B0C3] drop-shadow-lg rounded-md border border-[#182030]" in:fly={{ x: 10, delay: 500, duration: 250 }}>
            <div class="w-[96%] h-[50%] h-screen my-[2%] mx-auto bg-[#0A0D13] text-[#A6B0C3] font-semibold drop-shadow-lg rounded-md flex flex-col justify-center" >
                <p class="font-semibold absolute w-full text-center text-5xl">
                    iFruit 69
                </p>
                <p class="font-light absolute w-full text-center translate-y-[100%] text-3xl">
                    $999
                </p>
                <img class="object-cover h-[100%] w-[100%] rounded-md border-[#182030]" src="images/placeholder.png" alt="{name}"/>
            </div>
			
            <input bind:value={ amount1 } class="w-[10%] h-[15%] flex translate-x-[450%] text-center text-white drop-shadow-lg font-sans rounded-md bg-[#0D1018] border border-[#182030] transition ease-in-out delay-150" placeholder="1"/>

            <button type="button" class="relative w-[25%] h-[15%] translate-x-[150%] translate-y-[20%] drop-shadow-lg text-xl font-sans rounded-md font-semibold bg-[#2B4A28] text-[#E7FEDC] transition ease-in-out delay-150"
			on:click={
				payForItem1
			  }
			  in:fade={{ delay: 350, duration: 550 }}>	
			<i class="text-[#E7FEDC] fa fa-check"></i>
			Buy
			</button>
		</div>
		<div class="w-[49%] h-[95%] fixed left-[100.5%] bg-[#0A0D13] text-[#A6B0C3] drop-shadow-lg rounded-md border border-[#182030]" in:fly={{ x: 10, delay: 500, duration: 250 }}>
            <div class="w-[96%] h-[50%] h-screen my-[2%] mx-auto bg-[#0A0D13] text-[#A6B0C3] font-semibold drop-shadow-lg rounded-md flex flex-col justify-center" >
                <p class="font-semibold absolute w-full text-center text-5xl">
                    iFruit 69
                </p>
                <p class="font-light absolute w-full text-center translate-y-[100%] text-3xl">
                    $999
                </p>
                <img class="object-cover h-[100%] w-[100%] rounded-md border-[#182030]" src="images/placeholder.png" alt="{name}"/>
            </div>
			
            <input bind:value={ amount1 } class="w-[10%] h-[15%] flex translate-x-[450%] text-center text-white drop-shadow-lg font-sans rounded-md bg-[#0D1018] border border-[#182030] transition ease-in-out delay-150" placeholder="1"/>

            <button type="button" class="relative w-[25%] h-[15%] translate-x-[150%] translate-y-[20%] drop-shadow-lg text-xl font-sans rounded-md font-semibold bg-[#2B4A28] text-[#E7FEDC] transition ease-in-out delay-150"
			on:click={
				payForItem1
			  }
			  in:fade={{ delay: 350, duration: 550 }}>
			<i class="text-[#E7FEDC] fa fa-check"></i>
			Buy
			</button>
		</div>
		<div class="w-[49%] h-[95%] fixed left-[150.5%] bg-[#0A0D13] text-[#A6B0C3] drop-shadow-lg rounded-md border border-[#182030]" in:fly={{ x: 10, delay: 500, duration: 250 }}>
            <div class="w-[96%] h-[50%] h-screen my-[2%] mx-auto bg-[#0A0D13] text-[#A6B0C3] font-semibold drop-shadow-lg rounded-md flex flex-col justify-center" >
                <p class="font-semibold absolute w-full text-center text-5xl">
                    iFruit 69
                </p>
                <p class="font-light absolute w-full text-center translate-y-[100%] text-3xl">
                    $999
                </p>
                <img class="object-cover h-[100%] w-[100%] rounded-md border-[#182030]" src="images/placeholder.png" alt="{name}"/>
            </div>
			
            <input bind:value={ amount1 } class="w-[10%] h-[15%] flex translate-x-[450%] text-center text-white drop-shadow-lg font-sans rounded-md bg-[#0D1018] border border-[#182030] transition ease-in-out delay-150" placeholder="1"/>

            <button type="button" class="relative w-[25%] h-[15%] translate-x-[150%] translate-y-[20%] drop-shadow-lg text-xl font-sans rounded-md font-semibold bg-[#2B4A28] text-[#E7FEDC] transition ease-in-out delay-150"
			on:click={
				payForItem1
			  }
			  in:fade={{ delay: 350, duration: 550 }}>
			<i class="text-[#E7FEDC] fa fa-check"></i>
			Buy
			</button>
		</div>
	</div>
</div>