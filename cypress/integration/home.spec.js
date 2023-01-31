describe('jungle-rails app', () => {
  
  describe('The Home Page', () => {
    it('successfully loads', () => {
      cy.visit('http://localhost:3000') // change URL to match your dev URL
    })
    it("There is product on the page", () => {
      cy.get(".products article").should("be.visible");
    });
    it("There is 2 prodcuts on the page", () => {
      cy.get(".products article").should("have.length", 2);
    });
  })
 
})