import React from 'react';
import { motion } from 'motion/react';
import { Github, Linkedin, Briefcase, Trophy, Star, ShieldCheck, Crown } from 'lucide-react';
import profileImg from '../assets/profile.png';

export default function Hero() {
  return (
    <section id="home" className="min-h-screen flex items-center pt-24 pb-12 px-4 md:px-8 bg-white">
      <div className="max-w-7xl mx-auto grid lg:grid-cols-2 gap-12 items-center">
        {/* Left Content */}
        <motion.div
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.6 }}
          className="order-2 lg:order-1"
        >
          <span className="text-sm font-medium text-gray-500 uppercase tracking-[0.2em] mb-4 block">
            Welcome to my world
          </span>
          <h1 className="text-4xl md:text-6xl font-bold text-gray-900 leading-tight mb-6">
            Hi, I’m <span className="text-rose-600">Ajit Sharma</span>
            <br />
            <span className="text-3xl md:text-5xl">a Technical Lead & Flutter Developer.</span>
          </h1>
          <p className="text-lg text-gray-600 leading-relaxed mb-12 max-w-xl">
            I'm Ajit Sharma, a Technical Lead and experienced mobile application developer 
            with over 7 years of expertise in the full app development lifecycle. 
            I specialize in Flutter, leading teams to build high-quality, cross-platform 
            applications for Android, iOS, and web.
          </p>

          {/* Upwork Badges */}
          <div className="flex flex-wrap gap-6 mb-12">
            <div className="flex items-center gap-3 bg-gray-50 px-4 py-2 rounded-2xl border border-gray-100 shadow-sm">
              <div className="w-10 h-10 rounded-full bg-blue-600 flex items-center justify-center text-white">
                <Crown size={20} />
              </div>
              <div>
                <p className="text-sm font-bold text-gray-900 leading-tight">100% Job Success</p>
                <p className="text-[10px] text-gray-500 uppercase tracking-widest font-semibold">Upwork Verified</p>
              </div>
            </div>
            
            <motion.div 
              initial={{ opacity: 0, x: 10 }}
              animate={{ opacity: 1, x: 0 }}
              className="flex items-center gap-3 bg-gray-50 px-4 py-2 rounded-2xl border border-gray-100 shadow-sm"
            >
              <div className="w-10 h-10 rounded-full bg-rose-500 flex items-center justify-center text-white">
                <Star size={20} />
              </div>
              <div>
                <p className="text-sm font-bold text-gray-900 leading-tight">Top Rated Plus</p>
                <p className="text-[10px] text-gray-500 uppercase tracking-widest font-semibold">Top 2% Globally</p>
              </div>
            </motion.div>
          </div>

          <div className="grid md:grid-cols-2 gap-8">
            {/* Social Links */}
            <div>
              <span className="text-xs font-semibold text-gray-500 uppercase tracking-widest mb-4 block">
                Find me in
              </span>
              <div className="flex gap-4">
                <a href="https://www.upwork.com/freelancers/ajits10" target="_blank" rel="noopener noreferrer" className="w-14 h-14 rounded-xl bg-white flex items-center justify-center text-gray-700 hover:bg-rose-600 hover:text-white transition-all shadow-xl hover:-translate-y-1">
                  <Briefcase size={24} />
                </a>
                <a href="https://www.linkedin.com/in/ajit-sharma-a0883a72/" target="_blank" rel="noopener noreferrer" className="w-14 h-14 rounded-xl bg-white flex items-center justify-center text-gray-700 hover:bg-rose-600 hover:text-white transition-all shadow-xl hover:-translate-y-1">
                  <Linkedin size={24} />
                </a>
                <a href="https://github.com/Ajitcool008" target="_blank" rel="noopener noreferrer" className="w-14 h-14 rounded-xl bg-white flex items-center justify-center text-gray-700 hover:bg-rose-600 hover:text-white transition-all shadow-xl hover:-translate-y-1">
                  <Github size={24} />
                </a>
              </div>
            </div>

            {/* Best Skills */}
            <div>
              <span className="text-xs font-semibold text-gray-500 uppercase tracking-widest mb-4 block">
                Best skill on
              </span>
              <div className="flex gap-4">
                <div className="w-14 h-14 rounded-xl bg-white flex items-center justify-center text-rose-600 shadow-xl hover:-translate-y-1">
                  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/flutter/flutter-original.svg" className="w-8 h-8" alt="Flutter" />
                </div>
                <div className="w-14 h-14 rounded-xl bg-white flex items-center justify-center text-rose-600 shadow-xl hover:-translate-y-1">
                  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/dart/dart-original.svg" className="w-8 h-8" alt="Dart" />
                </div>
                <div className="w-14 h-14 rounded-xl bg-white flex items-center justify-center text-rose-600 shadow-xl hover:-translate-y-1">
                   <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/firebase/firebase-plain.svg" className="w-8 h-8" alt="Firebase" />
                </div>
              </div>
            </div>
          </div>
        </motion.div>

        {/* Right Image */}
        <motion.div
          initial={{ opacity: 0, scale: 0.9 }}
          animate={{ opacity: 1, scale: 1 }}
          transition={{ duration: 0.8 }}
          className="order-1 lg:order-2 flex justify-center"
        >
          <div className="relative w-full max-w-[500px] aspect-square">
            <div className="absolute inset-0 bg-gray-100 rounded-2xl shadow-2xl overflow-hidden">
              <img 
                src={profileImg} 
                alt="Ajit Sharma" 
                className="w-full h-full object-cover transition-all duration-500"
              />
            </div>
            {/* Decorative elements */}
            <div className="absolute -bottom-6 -right-6 w-32 h-32 bg-rose-600/10 rounded-full blur-3xl -z-10"></div>
            <div className="absolute -top-6 -left-6 w-32 h-32 bg-blue-600/10 rounded-full blur-3xl -z-10"></div>
          </div>
        </motion.div>
      </div>
    </section>
  );
}
