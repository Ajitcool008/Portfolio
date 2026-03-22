import React from 'react';
import Navbar from './components/Navbar';
import Hero from './components/Hero';
import Features from './components/Features';
import Portfolio from './components/Portfolio';
import Resume from './components/Resume';
import Testimonial from './components/Testimonial';
import Blog from './components/Blog';
import Contact from './components/Contact';
import Footer from './components/Footer';

export default function App() {
  return (
    <div className="min-h-screen bg-white font-sans selection:bg-rose-600 selection:text-white">
      <Navbar />
      <main>
        <Hero />
        <Features />
        <Portfolio />
        <Resume />
        <Testimonial />
        <Blog />
        <Contact />
      </main>
      <Footer />
    </div>
  );
}
