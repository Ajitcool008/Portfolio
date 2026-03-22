import React from 'react';
import { Smartphone, Layout, Code, Database, Layers, Globe, ArrowRight } from 'lucide-react';
import { motion } from 'motion/react';

const features = [
  {
    icon: Smartphone,
    title: 'Mobile App Development',
    description: 'Expertise in building high-performance, native-like mobile applications for iOS and Android using Flutter.',
  },
  {
    icon: Layout,
    title: 'Technical Consultancy',
    description: 'Discussing ideas, interactive UI huddles, and project planning for mobile and web development.',
  },
  {
    icon: Code,
    title: 'Rapid Prototyping',
    description: 'Developing working MVPs and functional prototypes quickly using the power of Flutter.',
  },
  {
    icon: Database,
    title: 'Code Review & Standards',
    description: 'Ensuring code quality, handling PR/MRs, and implementing standard architectural approaches.',
  },
  {
    icon: Layers,
    title: 'State Management Experts',
    description: 'Deep proficiency in Riverpod, Bloc, Provider, and GetX for scalable application architecture.',
  },
  {
    icon: Globe,
    title: 'Open Source Contributor',
    description: 'Active contributor on GitHub with well-documented projects and awesome READMEs.',
  },
];

export default function Features() {
  return (
    <section id="features" className="py-24 px-4 md:px-8 bg-white border-t border-gray-100">
      <div className="max-w-7xl mx-auto">
        <div className="mb-16">
          <span className="text-sm font-medium text-rose-600 uppercase tracking-[0.2em] mb-4 block">
            Features
          </span>
          <h2 className="text-4xl md:text-5xl font-bold text-gray-900">What I Do</h2>
        </div>

        <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
          {features.map((feature, index) => (
            <motion.div
              key={index}
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              viewport={{ once: true }}
              transition={{ delay: index * 0.1 }}
              className="group p-10 rounded-2xl bg-white shadow-xl hover:bg-rose-600 transition-all duration-300 cursor-pointer"
            >
              <div className="mb-8 text-rose-600 group-hover:text-white transition-colors">
                <feature.icon size={48} strokeWidth={1.5} />
              </div>
              <h3 className="text-2xl font-bold text-gray-900 group-hover:text-white mb-6 transition-colors">
                {feature.title}
              </h3>
              <p className="text-gray-600 group-hover:text-white/80 leading-relaxed mb-8 transition-colors">
                {feature.description}
              </p>
              <div className="text-rose-600 group-hover:text-white transition-colors">
                <ArrowRight size={24} />
              </div>
            </motion.div>
          ))}
        </div>
      </div>
    </section>
  );
}
