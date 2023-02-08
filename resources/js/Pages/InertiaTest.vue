<script setup>
import { Link } from '@inertiajs/inertia-vue3';
import {ref} from 'vue'

const newTitle = ref('')
const newContent = ref('')
</script>

<template>
Inertia Testです。<br>
<a href="/">aタグです</a><br>
<Link href="/">Link経由です。</Link><br>
<Link :href="route('inertia.index')">名前付きルートの確認です。</Link><br>
<Link :href="route('inertia.show', {id: 1})">button</Link><br>

<div class="mb-8"></div>
<input type="text" name="newTitle" v-model="newTitle">{{ newTitle }}<br>
<input type="text" name="newContent" v-model="newContent"><br>
<Link as="button" :method="post" ref="route('inertia.store')"
:date="{
    title: newTitle,
    content: newContent
}">DB保存テスト</Link>
</template>
