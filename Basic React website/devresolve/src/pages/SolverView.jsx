import React, { useState, useEffect } from "react";
import axios from "axios";

function SolverView() {
  const [doubts, setDoubts] = useState([]); // Step 2: State for doubts

  useEffect(() => {
    axios.get("http://localhost:5000/doubts")
      .then((response) => setDoubts(response.data)) // Update state with fetched doubts
      .catch((error) => console.error(error));
  }, []);

  return (
    <div className="solver-container">
      <h1>Solver</h1>
      <ul>
        {doubts.map((doubt) => (
          <li key={doubt._id}>{doubt.title} - ${doubt.price}</li>
        ))}
      </ul>
    </div>
  );
}

export default SolverView;
