declare class ZenModeButtonElement extends HTMLElement {
    button: HTMLElement;
    inZenMode: boolean;
    private deactivateZenMode;
    private activateZenMode;
    performAction(): void;
}
declare global {
    interface Window {
        ZenModeButtonElement: typeof ZenModeButtonElement;
    }
}
export {};
