import React from 'react';
import profileImg from '../assets/profile.png';

export default function Footer() {
  return (
    <footer className="py-12 px-4 md:px-8 bg-white border-t border-gray-100">
      <div className="max-w-7xl mx-auto flex flex-col items-center gap-8">
        <div className="flex items-center gap-3">
          <div className="w-12 h-12 rounded-full border-2 border-gray-200 overflow-hidden">
            <img src={profileImg} alt="Ajit Sharma" className="w-full h-full object-cover" />
          </div>
          <span className="text-xl font-bold tracking-tight text-gray-800 uppercase">
            Ajit <span className="text-rose-600">Sharma</span>
          </span>
        </div>
        
        <p className="text-gray-500 text-sm text-center">
          © {new Date().getFullYear()}. All rights reserved by Ajit Sharma.
          <br />
          Designed by Ajit Sharma
        </p>
      </div>
    </footer>
  );
}
