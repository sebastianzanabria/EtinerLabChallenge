function removeField() {
    document.body.addEventListener("click", (e) => {
        if ( e.target.nodeName === "A" &&
            e.target.parentNode.previousElementSibling) {
            /* to prevent from removing the first fieldset as it's previous sibling is null */
            e.target.parentNode.remove();
        }
    });
}
export { removeField }