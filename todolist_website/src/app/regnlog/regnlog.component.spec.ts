import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RegnlogComponent } from './regnlog.component';

describe('RegnlogComponent', () => {
  let component: RegnlogComponent;
  let fixture: ComponentFixture<RegnlogComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RegnlogComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(RegnlogComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
