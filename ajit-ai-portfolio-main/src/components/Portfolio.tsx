import React from 'react';
import { motion } from 'motion/react';
import { Heart, ArrowUpRight } from 'lucide-react';

import project1 from '../assets/interakt.png';
import project2 from '../assets/pinntag.png';
import project3 from '../assets/dumyah.png';
import project4 from '../assets/flock.png';
import project5 from '../assets/safeus.png';
import project6 from '../assets/yuv.png';

const projects = [
  {
    category: 'Web & Mobile',
    title: 'Interakt',
    image: project1,
    likes: 189,
    description: 'Grow your business on WhatsApp with interakt',
  },
  {
    category: 'Mobile App',
    title: 'PinnTag',
    image: project2,
    likes: 245,
    description: 'Explore Your City with Pinntag - Your Passport to Local Adventures!',
  },
  {
    category: 'Mobile App',
    title: 'Dumyah',
    image: project3,
    likes: 312,
    description: 'Welcome to Dumyah, the ultimate online shopping destination for Jordan.',
  },
  {
    category: 'Mobile App',
    title: 'Flock',
    image: project4,
    likes: 156,
    description: 'Local hangout app for making real-life connections.',
  },
  {
    category: 'Mobile App',
    title: 'SafeUs',
    image: project5,
    likes: 421,
    description: 'Community-driven safety app empowering users to protect one another.',
  },
  {
    category: 'IoT & Mobile',
    title: 'yuv® Lab',
    image: project6,
    likes: 567,
    description: 'The future of professional hair colour. Red Dot Winner 2025.',
  },
];

export default function Portfolio() {
  return (
    <section id="portfolio" className="py-24 px-4 md:px-8 bg-white border-t border-gray-100">
      <div className="max-w-7xl mx-auto">
        <div className="text-center mb-16">
          <span className="text-sm font-medium text-rose-600 uppercase tracking-[0.2em] mb-4 block">
            Visit my portfolio and keep your feedback
          </span>
          <h2 className="text-4xl md:text-5xl font-bold text-gray-900">My Portfolio</h2>
        </div>

        <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-10">
          {projects.map((project, index) => (
            <motion.div
              key={index}
              initial={{ opacity: 0, scale: 0.95 }}
              whileInView={{ opacity: 1, scale: 1 }}
              viewport={{ once: true }}
              transition={{ delay: index * 0.1 }}
              className="group p-8 rounded-3xl bg-white shadow-xl hover:bg-gray-50 transition-all duration-300 cursor-pointer"
            >
              <div className="relative overflow-hidden rounded-2xl mb-8 aspect-[4/3]">
                <img
                  src={project.image}
                  alt={project.title}
                  className="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500"
                  referrerPolicy="no-referrer"
                />
              </div>
              <div className="flex items-center justify-between mb-4">
                <span className="text-xs font-semibold text-rose-600 uppercase tracking-widest">
                  {project.category}
                </span>
                <div className="flex items-center gap-1 text-gray-500 text-sm">
                  <Heart size={14} />
                  <span>{project.likes}</span>
                </div>
              </div>
              <h3 className="text-2xl font-bold text-gray-900 group-hover:text-rose-600 transition-colors mb-4 flex items-center justify-between">
                {project.title}
                <ArrowUpRight size={24} className="opacity-0 group-hover:opacity-100 transition-opacity" />
              </h3>
            </motion.div>
          ))}
        </div>
      </div>
    </section>
  );
}
