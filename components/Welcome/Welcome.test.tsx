import React from "react";
import { render, screen } from "@testing-library/react";
import Welcome from "./Welcome";

describe("Welcome", () => {
  it("renders the screen", () => {
    render(<Welcome />);

    expect(screen.queryByText("Welcome to Next.js!"));
  });
});
