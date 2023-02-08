<script setup>
import GuestLayout from "@/Layouts/GuestLayout.vue";
import InputLabel from "@/Components/InputLabel.vue";
import TextInput from "@/Components/TextInput.vue";
</script>

<template>
    <GuestLayout>
        <InputLabel value="件名"></InputLabel>
        <TextInput
            modelValue="初期値"
            @update:modelValue="emitTest"
        ></TextInput>
    </GuestLayout>
</template>
