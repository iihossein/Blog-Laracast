@props(['trigger'])
<div x-data="{ show: false }" @click.away="show = false">
    {{-- trigger --}}
    <div @click="show = ! show">
        {{ $trigger }}
    </div>

    {{-- Links --}}
    <div x-show="show" class="py-0 absolute bg-gray-100 w-full mt-2 rounded-xl z-50" style="display: none;">
        {{ $slot }}
    </div>
</div>
