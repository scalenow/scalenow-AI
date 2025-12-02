import { Controller } from '@hotwired/stimulus';
import { MainMenuNavigationService } from 'core-app/core/main-menu/main-menu-navigation.service';

export default class MainMenuController extends Controller {
  static targets = [
    'sidebar',
    'root',
    'item',
  ];

  declare readonly sidebarTarget:HTMLElement;
  declare readonly rootTarget:HTMLElement;
  declare readonly itemTargets:HTMLElement[];

  initialize() {
    if (this.rootTarget.classList.contains('closed')) {
      this.sidebarTarget.classList.add('-hidden');
    }

    const active = this.getActiveMenuName();
    if (active) {
      this.markActive(active);
      // Ensure the active menu is open on initialization
      this.openActiveMenu(active);
    }
  }

  descend(event:MouseEvent) {
    const target = event.target as HTMLElement;
    const targetLi = target.closest('li') as HTMLElement;

    // Close all other submenus
    const submenus = this.rootTarget.querySelectorAll('ul.main-menu--children')
    submenus.forEach((submenu) => {
      submenu.classList.remove('d-block');
    });

    // If the targetLi is already open, close it
    if (targetLi.classList.contains('open')) {
      this.closeMenu(targetLi);
    } else {
      this.openMenu(targetLi);
    }

    targetLi.querySelector<HTMLElement>('li > a, .tree-menu--title')?.focus();

    const backArrow = targetLi.querySelector('.main-menu--arrow-left-to-project') as HTMLElement;
    backArrow.focus();
    this.markActive(targetLi.dataset.name as string);
  }

  ascend(event:MouseEvent) {
    event.preventDefault();
    const target = event.target as HTMLElement;
    const parent = target.closest('li') as HTMLElement;

    this.closeMenu(parent);

    parent.querySelector<HTMLElement>('.toggler')?.focus();

    this.sidebarTarget.classList.remove('-hidden');
  }

  private getActiveMenuName():string|undefined {
    const activeItem = this.itemTargets.find((el) => el.classList.contains('open'));
    const activeRoot = this.rootTarget.querySelector('li');
    return (activeItem || activeRoot)?.dataset.name;
  }

  private markActive(active:string):void {
    void window.OpenProject.getPluginContext()
      .then((pluginContext) => pluginContext.injector.get(MainMenuNavigationService))
      .then((service) => service.navigationEvents$.next(active));
  }

  private openMenu(item:HTMLElement) {
    // Remove open class and add closed for all item targets
    this.itemTargets.forEach(item => {
      item.classList.remove('open');
      item.classList.add('closed');
    });

    item.classList.add('open');
    item.classList.remove('closed');
    item.querySelector('ul.main-menu--children')?.classList.add('d-block');

    // Remove down icon and add right icon for all menus
    const icons = this.rootTarget.querySelectorAll('.toggler.main-menu-toggler .icon-small');
    icons.forEach(icon => {
      icon.classList.remove('icon-arrow-down1');
      icon.classList.add('icon-arrow-right2');
    });

    item.querySelector('.icon-small')?.classList.remove('icon-arrow-right2');
    item.querySelector('.icon-small')?.classList.add('icon-arrow-down1');
  }

  private closeMenu(item:HTMLElement) {
    item.classList.remove('open');
    item.classList.add('closed');
    item.querySelector('ul.main-menu--children')?.classList.remove('d-block');
    item.querySelector('.icon-small')?.classList.remove('icon-arrow-down1');
    item.querySelector('.icon-small')?.classList.add('icon-arrow-right2');
  }

  private openActiveMenu(active:string):void {
    const activeItem = this.itemTargets.find((el) => el.dataset.name === active);
    if (activeItem) {
      this.openMenu(activeItem);
    }
  }
}
