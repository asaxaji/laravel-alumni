<div x-show="show" class="border px-4 py-3 my-2 text-gray-700 sm:rounded-md">
    <form wire:submit="updateWorks">
        <div>
            <x-jet-input id="company_name" type="text" wire:model="career.company_name" class="mt-1 block w-full" placeholder="Nama Perusahaan" />
            <x-jet-input-error for="company_name" class="mt-2" />
        </div>
        <div class="block mt-3">
            <x-jet-input id="jabatan" type="text" wire:model="career.jabatan" class="mt-1 block w-full" placeholder="Jabatan" />
            <x-jet-input-error for="jabatan" class="mt-2" />
        </div>
        <div class="block mt-3">
            <x-jet-input id="start_at" type="date" wire:model="career.start_at" class="mt-1 block w-full" placeholder="Mulai Dari" />
            <x-jet-input-error for="start_at" class="mt-2" />
        </div>
        <div class="block mt-3">
            <label for="is_cureent" class="flex items-center">
                <input id="is_cureent" type="checkbox" class="form-checkbox" wire:model="career.is_cureent">
                <span class="ml-2 text-sm text-gray-600">{{ __('Present') }}</span>
            </label>
        </div>
        <div class="block mt-3" x-show="!isPresent">
            <x-jet-input id="start_at" type="date" wire:model="career.start_at" class="mt-1 block w-full" placeholder="Mulai Dari" />
            <x-jet-input-error for="start_at" class="mt-2" />
        </div>
        <x-jet-button class="mt-3">
            {{ __('Save') }}
        </x-jet-button>
    </form>
</div>
