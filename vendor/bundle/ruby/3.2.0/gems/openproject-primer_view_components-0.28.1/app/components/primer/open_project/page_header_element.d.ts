declare class PageHeaderElement extends HTMLElement {
    menuItemClick(event: Event): void;
}
declare global {
    interface Window {
        PageHeaderElement: typeof PageHeaderElement;
    }
}
export {};
