<script lang="ts">
	import { VISIBILITY } from '../store/stores';
	import {
		 PLAYER_NAME,
		 PLAYER_CASH,
		 PLAYER_BANK,
		 PLAYER_CRYPTO,
		 PLAYER_JOB,
		 PLAYER_JOB_RANK,
		 PLAYER_JOB_DUTY,
		 TEMP_HIDE,
		 TITLE
	} from '../store/stores';

	import { SlideToggle } from '@skeletonlabs/skeleton';
	import { SendNUI } from '../utils/SendNUI';
	import { fade, fly, slide, crossfade } from 'svelte/transition';
	import { quintIn, quintOut, sineOut } from 'svelte/easing';
	import { onMount } from 'svelte';
	let name = 'Image';
  
	const closeDialog = () => {
	  VISIBILITY.set(false);
	  SendNUI('hideUI');
	};

	onMount(async () => {
        let playerName = await SendNUI('get_player_name')
		let playerCash = await SendNUI('get_player_cash')
		let playerBank = await SendNUI('get_player_bank')
		let playerCrypto = await SendNUI('get_player_crypto')
		let playerJob = await SendNUI('get_player_job')
		let playerJobRank = await SendNUI('get_player_jobrank')
		let playerDuty = await SendNUI('get_player_jobduty')
		let title = await SendNUI('get_title_name')

        PLAYER_NAME.set(playerName)
        PLAYER_CASH.set(playerCash)
		PLAYER_BANK.set(playerBank)
		PLAYER_CRYPTO.set(playerCrypto)
		PLAYER_JOB.set(playerJob)
		PLAYER_JOB_RANK.set(playerJobRank)
		PLAYER_JOB_DUTY.set(playerDuty)
		TITLE.set(title)
    })

	function hideMenu() {
  	return $TEMP_HIDE = true
	}
</script>

<div class="w-[20%] h-[100%] bg-[#0D1018] left-[50%] transition ease-in-out delay-150" in:fly={{ duration: 750, delay: 200, x:-800, opacity:100 , easing: quintOut }} out:fly={{ duration: 500, x:-400, opacity:100 , easing: quintIn }} 
style="opacity: {$TEMP_HIDE ? "0" : "1"};"
>
	<div class="w-[100%] h-[100%] bg-[#0D1018] justify-center overflow-y-auto">
	<div class="w-[85%] h-[15%] h-screen my-[5%] mx-auto bg-[#0A0D13] text-[#A6B0C3] font-semibold drop-shadow-lg rounded-md flex flex-col justify-center" >
		<p class="font-semibold absolute w-full text-center text-4xl">{$TITLE}</p>
		<img class="object-cover h-[100%] w-[100%] rounded-md border border-[#182030]" src="images/placeholder.png" alt="{name}"/>
	</div>

	<div class="w-[85%] h-[4.5%] my-3 mx-auto bg-[#0A0D13] text-[#A6B0C3] font-semibold drop-shadow-lg rounded-md border border-[#182030] flex flex-col justify-center" >
		<p class="ml-5">
			<i class="text-[#182030] fa fa-circle-user"></i>
			Welcome back, {$PLAYER_NAME}
		</p>		
	</div>
	<div class="w-[82%] h-[4.5%] mx-auto my-3 bg-[#0A0D13] text-[#A6B0C3] drop-shadow-lg rounded-md border border-[#182030] flex flex-col justify-center" >
		<p class="ml-5">
			<i class="text-[#2A5430] fa-solid fa-money-bill"></i>
		${$PLAYER_CASH}
		</p>
	</div>
	<div class="w-[82%] h-[4.5%] mx-auto my-3 bg-[#0A0D13] text-[#A6B0C3] drop-shadow-lg rounded-md border border-[#182030] flex flex-col justify-center" >
		<p class="ml-5">
			<i class="text-[#2A4A54] fa-solid fa-building-columns"></i>
		${$PLAYER_BANK}
		</p>
	</div>
	<div class="w-[82%] h-[4.5%] mx-auto bg-[#0A0D13] text-[#A6B0C3] drop-shadow-lg rounded-md border border-[#182030] flex flex-col justify-center" >
		<p class="ml-5">
			<i class="text-[#54402A] fa-solid fa-bitcoin-sign"></i>
		{$PLAYER_CRYPTO} Coins
		</p>
	</div>
	<div class="w-[85%] h-[13%] mx-auto my-3 space-y-4 bg-[#0A0D13] drop-shadow-lg rounded-md overflow-auto border border-[#182030]" >
		<div class="w-[100%] h-[33%] mx-auto bg-[#0A0D13] drop-shadow-lg rounded-md border border-[#182030]" >
			<p class="font-semibold absolute mt-4 ml-4 text-4xl overflow-hidden">
				<i class="fa-solid fa-hammer"></i>
			   Job Information
			</p>
			<img class="object-cover h-[100%] w-[100%] rounded-md" src="images/backgroundPlaceholder.png" alt="{name}"/>
		</div>
		<p class="ml-5">
			<i class="text-[#182030] fa-solid fa-user-doctor"></i>
			{$PLAYER_JOB}
		</p>
		<p class="ml-5">
			<i class="text-[#182030] fa-solid fa-graduation-cap"></i>
			{$PLAYER_JOB_RANK}
		</p>	
		<p class="ml-5">
			<i class="text-[#182030] fa-solid {$PLAYER_JOB_DUTY}"></i>
			Clocked-In
		</p>
	</div>
	<div class="w-[85%] h-[17%] mx-auto my-5 bg-[#0A0D13] text-[#A6B0C3] drop-shadow-lg rounded-md border border-[#182030] overflow-auto" >
		<div class="w-[100%] h-[30%] mx-auto bg-[#0A0D13] text-[#A6B0C3] drop-shadow-lg rounded-md border border-[#182030]" >
			<p class="font-semibold absolute translate-y-[60%] w-full ml-5 text-4xl overflow-hidden">Butter Barns'</p>
			<img class="object-cover h-[100%] w-[100%] rounded-md" src="images/placeholder.png" alt="{name}"/>
		</div>
		<p class=" my-5 ml-4 text-2xl">
			Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
		</p>
			<button type="button" class="relative w-[75%] h-[15%] translate-x-[15%] drop-shadow-lg text-xl font-sans rounded-md bg-[#2B4A28] text-[#E7FEDC] transition ease-in-out delay-150"
			 on:click={
			 	hideMenu
		   	}
			in:fade={{ delay: 350, duration: 550 }}>
			<i class="text-[#E7FEDC] fa fa-check"></i>
		 	Shop Now
			</button>
	</div>
	<div class="w-[50%] h-[25.5%]" in:fly={{ y: 10, delay: 500, duration: 250 }}></div>
	<button type="button" class="relative w-[75%] h-[3%] bottom-[2%] translate-x-[15%] drop-shadow-lg text-xl font-sans rounded-md font-semibold bg-[#4A282D] text-[#FEDCDD] transition ease-in-out delay-150"
	on:click={
		closeDialog
	  }
	  in:fade={{ delay: 350, duration: 550 }}>

	  <i class="text-[#FEDCDD] fa fa-xmark"></i>
	  Close Menu
	</button>
	</div>
</div>