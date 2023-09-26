import { writable } from "svelte/store";

export const VISIBILITY = writable<boolean>(false);
export const BROWSER_MODE = writable<boolean>(false);
export const RESOURCE_NAME = writable<string>("");
export const PLAYER_NAME = writable<string>(""); 
export const PLAYER_CASH = writable<string>("");
export const PLAYER_BANK = writable<string>("");
export const PLAYER_CRYPTO = writable<string>("");
export const PLAYER_JOB = writable<string>("");
export const PLAYER_JOB_RANK = writable<string>("");
export const PLAYER_JOB_DUTY = writable<string>("");
export const TITLE = writable<string>("");

export const TEMP_HIDE = writable<boolean>(false);