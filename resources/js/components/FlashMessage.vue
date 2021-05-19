<template>
    <div
        class="notification "
        :class="[
            { 'is-success': variant === 'success' },
            { 'is-danger': variant === 'error' },
            { 'is-warning': variant === 'warning' }
        ]"
        v-show="visible"
    >
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
        },
        variant: {
            type: String,
            required: true
        }
    },
    data() {
        return {
            visible: false
        };
    },
    methods: {
        show() {
            this.visible = true;
            setTimeout(() => {
                this.hide();
            }, 3000);
        },
        hide() {
            this.visible = false;
        }
    },
    created() {
        this.show();
    }
};
</script>
