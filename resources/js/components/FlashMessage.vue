<template>
    <div class="notification is-success" v-show="visible">
        <button class="delete"></button>
        <p>{{ text }}</p>
    </div>
</template>

<script>
export default {
    props: {
        text: {
            type: String,
            required: true
        }
    },
    data() {
        return {
            visible: false
        }
    },
    methods: {
        show() {
            this.visible = true
            setTimeout(() => {
                this.hide()
            }, 3000)
        },
        hide() {
            this.visible = false
        }
    },
    created() {
        this.show()
    }
}
</script>
