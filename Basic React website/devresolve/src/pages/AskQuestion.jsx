import React, { useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";

function AskQuestion() {
  const [title, setTitle] = useState("");
  const [body, setBody] = useState("");
  const [bounty, setBounty] = useState("");  // New State for Bounty
  const navigate = useNavigate();

  const handleSubmit = (e) => {
    e.preventDefault();
    axios
      .post("http://localhost:5000/questions", { title, body, bounty })
      .then(() => navigate("/"))
      .catch((error) => console.error(error));
  };

  return (
    <div className="max-w-2xl mx-auto p-6 bg-gray-800 text-white rounded-md shadow-lg">
      <h1 className="text-3xl font-bold mb-4">Ask a Question</h1>
      
      <form onSubmit={handleSubmit} className="flex flex-col gap-4">
        {/* Title Input */}
        <input
          type="text"
          placeholder="Title"
          value={title}
          onChange={(e) => setTitle(e.target.value)}
          required
          className="p-2 border border-gray-600 rounded-md bg-gray-900 text-white"
        />

        {/* Description Textarea */}
        <textarea
          placeholder="Description"
          value={body}
          onChange={(e) => setBody(e.target.value)}
          required
          className="p-2 border border-gray-600 rounded-md bg-gray-900 text-white h-32"
        ></textarea>

        {/* Bounty Input with Dollar Sign */}
        <div className="relative">
          <span className="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400">$</span>
          <input
            type="number"
            placeholder="Bounty"
            value={bounty}
            min="0" // Prevents negative values
            onChange={(e) => setBounty(Math.max(0, e.target.value))} // Ensures non-negative value
            required
            className="pl-8 p-2 border border-gray-600 rounded-md bg-gray-900 text-white w-full"
          />
        </div>

        {/* Submit Button */}
        <button
          type="submit"
          className="bg-blue-600 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-md transition"
        >
          Post Question
        </button>
      </form>
    </div>
  );
}

export default AskQuestion;
