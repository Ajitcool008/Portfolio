import React, { useState, useEffect } from 'react';
import { Link } from 'react-scroll';
import { Menu, X, Github, Linkedin, Briefcase } from 'lucide-react';
import { motion, AnimatePresence } from 'motion/react';
import profileImg from '../assets/profile.png';
import { clsx, type ClassValue } from 'clsx';
import { twMerge } from 'tailwind-merge';

function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

const navLinks = [
  { name: 'Home', to: 'home' },
  { name: 'Features', to: 'features' },
  { name: 'Portfolio', to: 'portfolio' },
  { name: 'Resume', to: 'resume' },
  { name: 'Testimonial', to: 'testimonial' },
  { name: 'Blog', to: 'blog' },
  { name: 'Contact', to: 'contact' },
];

export default function Navbar() {
  const [isScrolled, setIsScrolled] = useState(false);
  const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      setIsScrolled(window.scrollY > 50);
    };
    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  return (
    <nav
      className={cn(
        'fixed top-0 left-0 right-0 z-50 transition-all duration-300 px-4 md:px-8 py-4',
        isScrolled ? 'bg-white/80 backdrop-blur-md shadow-lg py-3' : 'bg-transparent'
      )}
    >
      <div className="max-w-7xl mx-auto flex items-center justify-between">
        <div className="flex items-center gap-3">
          <div className="w-12 h-12 rounded-full border-2 border-gray-200 overflow-hidden bg-gray-100">
            <img 
              src={profileImg} 
              alt="Ajit Sharma" 
              className="w-full h-full object-cover"
            />
          </div>
          <span className="text-xl font-bold tracking-tight text-gray-800 uppercase">
            Ajit <span className="text-rose-600">Sharma</span>
          </span>
        </div>

        {/* Desktop Menu */}
        <div className="hidden lg:flex items-center gap-8">
          <ul className="flex items-center gap-6">
            {navLinks.map((link) => (
              <li key={link.to}>
                <Link
                  to={link.to}
                  spy={true}
                  smooth={true}
                  offset={-80}
                  duration={500}
                  className="text-sm font-medium text-gray-600 hover:text-rose-600 cursor-pointer transition-colors uppercase tracking-wider"
                  activeClass="text-rose-600"
                >
                  {link.name}
                </Link>
              </li>
            ))}
          </ul>
          <a
            href="https://www.linkedin.com/in/ajit-sharma-a0883a72/"
            target="_blank"
            rel="noopener noreferrer"
            className="bg-white text-rose-600 border border-rose-600 px-6 py-2 rounded-lg font-semibold text-sm hover:bg-rose-600 hover:text-white transition-all shadow-md hover:shadow-rose-200"
          >
            HIRE ME
          </a>
        </div>

        {/* Mobile Toggle */}
        <button
          className="lg:hidden p-2 text-gray-600 hover:text-rose-600 transition-colors"
          onClick={() => setIsMobileMenuOpen(!isMobileMenuOpen)}
        >
          {isMobileMenuOpen ? <X size={28} /> : <Menu size={28} />}
        </button>
      </div>

      {/* Mobile Menu Overlay */}
      <AnimatePresence>
        {isMobileMenuOpen && (
          <motion.div
            initial={{ opacity: 0, x: '100%' }}
            animate={{ opacity: 1, x: 0 }}
            exit={{ opacity: 0, x: '100%' }}
            transition={{ type: 'spring', damping: 25, stiffness: 200 }}
            className="fixed inset-0 z-50 bg-white lg:hidden flex flex-col p-8"
          >
            <div className="flex items-center justify-between mb-12">
              <div className="flex items-center gap-3">
                <div className="w-10 h-10 rounded-full border-2 border-gray-200 overflow-hidden">
                  <img src={profileImg} alt="Ajit Sharma" className="w-full h-full object-cover" />
                </div>
                <span className="text-lg font-bold text-gray-800 uppercase">Ajit</span>
              </div>
              <button onClick={() => setIsMobileMenuOpen(false)} className="p-2 text-gray-600">
                <X size={28} />
              </button>
            </div>

            <ul className="flex flex-col gap-6 mb-12">
              {navLinks.map((link) => (
                <li key={link.to}>
                  <Link
                    to={link.to}
                    spy={true}
                    smooth={true}
                    offset={-80}
                    duration={500}
                    className="text-lg font-semibold text-gray-700 hover:text-rose-600 transition-colors uppercase tracking-widest"
                    onClick={() => setIsMobileMenuOpen(false)}
                  >
                    {link.name}
                  </Link>
                </li>
              ))}
            </ul>

            <div className="mt-auto">
              <p className="text-sm text-gray-500 uppercase tracking-widest mb-6">Find me in</p>
              <div className="flex gap-4">
                <a href="https://www.linkedin.com/in/ajit-sharma-a0883a72/" target="_blank" rel="noopener noreferrer" className="w-12 h-12 rounded-lg bg-gray-50 flex items-center justify-center text-gray-600 hover:bg-rose-600 hover:text-white transition-all shadow-md">
                  <Linkedin size={20} />
                </a>
                <a href="https://github.com/Ajitcool008" target="_blank" rel="noopener noreferrer" className="w-12 h-12 rounded-lg bg-gray-50 flex items-center justify-center text-gray-600 hover:bg-rose-600 hover:text-white transition-all shadow-md">
                  <Github size={20} />
                </a>
                <a href="https://www.upwork.com/freelancers/ajits10" className="w-12 h-12 rounded-lg bg-gray-50 flex items-center justify-center text-gray-600 hover:bg-rose-600 hover:text-white transition-all shadow-md">
                  <Briefcase size={20} />
                </a>
              </div>
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </nav>
  );
}
