var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
import { controller, target } from '@github/catalyst';
let ZenModeButtonElement = class ZenModeButtonElement extends HTMLElement {
    constructor() {
        super(...arguments);
        this.inZenMode = false;
    }
    deactivateZenMode() {
        this.inZenMode = false;
        this.button.setAttribute('aria-pressed', 'false');
        if (document.exitFullscreen) {
            void document.exitFullscreen();
        }
    }
    activateZenMode() {
        this.inZenMode = true;
        this.button.setAttribute('aria-pressed', 'true');
        if (document.documentElement.requestFullscreen) {
            void document.documentElement.requestFullscreen();
        }
    }
    performAction() {
        if (this.inZenMode) {
            this.deactivateZenMode();
        }
        else {
            this.activateZenMode();
        }
    }
};
__decorate([
    target
], ZenModeButtonElement.prototype, "button", void 0);
ZenModeButtonElement = __decorate([
    controller
], ZenModeButtonElement);
if (!window.customElements.get('zen-mode-button')) {
    window.ZenModeButtonElement = ZenModeButtonElement;
    window.customElements.define('zen-mode-button', ZenModeButtonElement);
}
