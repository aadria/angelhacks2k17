import { GetFitPage } from './app.po';

describe('get-fit App', () => {
  let page: GetFitPage;

  beforeEach(() => {
    page = new GetFitPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
