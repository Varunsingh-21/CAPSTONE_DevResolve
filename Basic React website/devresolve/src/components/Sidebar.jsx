import React, { useState } from "react";
import { Link } from "react-router-dom";
import { FaBars } from "react-icons/fa"; // Importing the menu icon

const Sidebar = () => {
  const [isOpen, setIsOpen] = useState(true);

  return (
    <div className="flex">
      {/* Sidebar - Fixed on the Left */}
      <div
        className={`bg-gray-900 text-white h-screen fixed top-0 left-0 transition-all duration-300 ${
          isOpen ? "w-64" : "w-16"
        }`}
      >
        {/* Toggle Button */}
        <button
          className="text-white text-2xl mb-5 p-2 border rounded-md hover:bg-gray-800 m-4"
          onClick={() => setIsOpen(!isOpen)}
        >
          <FaBars />
      </button>

        {/* Menu Items */}
        {isOpen && (
          <nav className="mt-5 px-4">
            <h2 className="text-xl font-bold mb-4">Menu</h2>
            <ul className="space-y-3">
              <li>
                <Link to="/" className="hover:text-blue-400 block">
                  Home
                </Link>
              </li>
              <li>
                <Link to="/ask" className="hover:text-blue-400 block">
                  Ask Question
                </Link>
              </li>
              <li>
                <Link to="/profile" className="hover:text-blue-400 block">
                  Profile
                </Link>
              </li>
        </ul>
          </nav>
        )}
      </div>
    </div>
  );
};

export default Sidebar;
