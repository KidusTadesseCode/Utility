import styled from "styled-components";

export const ScreenReaderContainer = styled.div`
  /* padding: 4rem 2rem; */
  min-height: 100vh;
  /* background: linear-gradient(135deg, #6a11cb, #2575fc); */
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: flex-start;
  font-family: "Arial", sans-serif;
  row-gap: 3rem;
`;

export const Header = styled.div`
  color: #fff;
  font-size: 2.5rem;
  font-weight: bold;
  margin-bottom: 2rem;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
`;

export const SubContainer = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 100%;
  max-width: 95%;
  /* background: rgba(255, 255, 255, 0.1); */
  backdrop-filter: blur(10px);
  padding: 2rem;
  border-radius: 12px;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
  row-gap: 1.5rem;
`;

export const TextArea = styled.textarea`
  background-color: rgba(30, 30, 30, 0.9); /* Dark background color */
  color: #ffffff; /* White text for contrast */
  width: 100%;
  height: 120px;
  border: none;
  border-radius: 8px;
  padding: 1rem;
  font-size: 1rem;
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
  outline: none;
  resize: none;

  &:focus {
    border: 2px solid #ff7eb3;
    background-color: rgba(30, 30, 30, 1);
  }
`;

export const DisplayTextContainer = styled.div`
  width: 100%;
  padding: 1rem;
  background-color: rgba(30, 30, 30, 0.9); /* Dark background */
  color: #ffffff; /* White text for contrast */
  font-size: 1rem;
  font-weight: 500;
  border-radius: 8px;
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3); /* Slightly darker shadow */
  word-wrap: break-word;
  word-break: break-word;
  white-space: pre-wrap;

  &:hover {
    background-color: rgba(45, 45, 45, 1); /* Slightly lighter on hover */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4); /* Enhanced shadow on hover */
  }
`;
export const IconContainer = styled.div`
  align-self: flex-start;
  display: flex;
  justify-content: space-between;
  flex-direction: row;
  width: 9%;
`;
export const WrapperContainer = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 1rem;
  cursor: pointer;
  background-color: rgba(45, 45, 45, 0.9); /* Dark background for the icon */
  color: #ffffff; /* Icon color */
  width: 40px;
  height: 40px;
  border-radius: 50%;
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3); /* Shadow for a button-like effect */
  transition: background-color 0.3s ease;

  &:hover {
    background-color: rgba(60, 60, 60, 1); /* Slightly lighter on hover */
  }

  &:active {
    background-color: rgba(80, 80, 80, 1); /* Even lighter on click */
  }
`;
